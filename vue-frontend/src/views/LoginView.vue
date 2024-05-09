<script setup>
import {reactive, ref} from "vue";
import {adminLoginService, loginService} from "@/methods/login";
import router from "@/router";
import {useTokenStore} from "@/stores/token";
import {useReaderStore} from "@/stores/reader.js";
import {ElLoading, ElNotification} from "element-plus";
import {useAdminStore} from "@/stores/admin.js";

const adminStore = useAdminStore();
const readerStore = useReaderStore();
const tokenStore = useTokenStore();

const ruleFormRef = ref();

// 表单校验规则
const rules = {
  username: [
    {min: 1, max: 10, message: "长度在 1 到 10 个字符", trigger: "change"},
  ],
};

// 返回的用户信息
let returnReader = reactive({
  id: "",
  username: "",
  nickname: "",
  gender: "",
  age: "",
  tel: "",
  token: "",
});

const loginDto = ref({
  username: "",
  password: "",
});
const login = async function () {
  // 显示加载中动画
  const loading = ElLoading.service({
    lock: true,
    text: '长时间加载请刷新页面......',
    background: 'rgba(0, 0, 0, 0.7)',
  })

  const result = await loginService(loginDto.value);
  returnReader = result.data;

  // console.log(returnReader);

  //保存用户信息和token
  readerStore.setReader(returnReader);
  tokenStore.setToken(returnReader.token);
  adminStore.setIsAdmin(false);

  // 关闭动画
  loading.close();

  // console.log("tokenStore:" + tokenStore.token);

  await router.push("/book");
  ElNotification.success({
    title: "登录成功",
    message: "Hello," + returnReader.nickname,
    duration: 1500,
  });
};

// 返回的管理员信息
let returnAdmin = reactive({
  id: "",
  username: "",
  nickname: "",
});
const adminLogin = async function () {
  const result = await adminLoginService(loginDto.value);
  returnAdmin = result.data;
  console.log(returnAdmin);
  //保存管理员信息和token
  adminStore.setAdmin(returnAdmin);
  tokenStore.setToken(returnAdmin.token);
  //设置为管理员视图
  adminStore.setIsAdmin(true);

  await router.push("/adminBook");
  ElNotification.success({
    title: "登录成功",
    message: "Hello," + returnAdmin.nickname,
    duration: 3000,
  });
};

// 提交表单
const submitForm = async (formEl) => {
  if (!formEl) return;
  formEl.validate(async (valid) => {
    if (valid) {
      // 判断是否为管理员登录
      if (isAdmin.value) {
        await adminLogin();
      } else {
        await login();
      }
    } else {
      await router.push("/login");
      return false;
    }
  });
};

let isAdmin = ref(false);
</script>

<template>
  <div class="bContainer">
    <div class="text"><text>图书借阅管理系统</text></div>
    <p></p>
  <!--用户登录表单-->
  <el-form
      ref="ruleFormRef"
      status-icon
      label-width="120px"
      class="centered-form"
      :model="loginDto"
      :rules="rules"
      title="登录"
  >
    <!--用户名-->
    <el-form-item label="用户名" prop="username" class="form-row" required>
      <el-input v-model="loginDto.username"/>
    </el-form-item>
    <!--密码-->
    <el-form-item label="密码" prop="password" class="form-row" required>
      <el-input
          v-model.number="loginDto.password"
          type="password"

      />
    </el-form-item>
    <div class="button-row">
      <el-form-item>
        <el-button type="primary" @click="submitForm(ruleFormRef)"
        >登录
        </el-button
        >
        <el-button type="success" @click="router.push('/register')"
        >注册
        </el-button
        >
      </el-form-item>

      <el-switch
          v-model="isAdmin"
          class="mb-2"
          style="--el-switch-on-color: #13ce66; --el-switch-off-color: #fd8250"
          inline-prompt
          size="large"
          active-text="管理员"
          inactive-text="读者"
      />
    </div>
  </el-form>
  </div>
  <div id="footer" class="footer">
    <span>Designed by DuKe.</span>
  </div>
</template>

<style scoped>
.centered-form {
  display: flex;
  justify-content: center;
  align-items: center;
  width: 90%;
  flex-direction: column;
}

.text{
  font-size:22px;
  margin-bottom: 40px;
}

.button-row {
  margin-top: 10px;
  display: flex;
  justify-content: space-between;
  margin-left: 30px;
  width: 340px;
}
.bContainer{
  background: #ffffff;
  margin-left: 50%;
  width: 400px;
  padding-top: 40px;
  padding-bottom: 15px;
  text-align: center;
  border-radius: 10px;
}
.footer {
  position: fixed;
  left: 0;
  bottom: 0;
  width: 100%;
  height: 60px; /* 自定义高度 */
  display: flex;
  justify-content: center;
  align-items: center;
  background-color: transparent; /* 灰色 */
  color: #ffffff;
  font-size: 14px;
  text-align: center;
  padding: 10px 0;
  font-family: "Times New Roman",serif;
}
</style>
