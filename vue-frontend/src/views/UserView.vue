<script setup>
import { useReaderStore } from "@/stores/reader.js";
import { ref } from "vue";
import router from "@/router/index.js";
import { updateReaderService } from "@/methods/reader.js";
import { ElMessage } from "element-plus";
import { useAdminStore } from "@/stores/admin.js";
import { updateAdminService } from "@/methods/admin.js";

const adminStore = useAdminStore();
const isAdmin = adminStore.isAdmin;
const admin = adminStore.admin;
const readerStore = useReaderStore();

let reader;
let isMan;

if (!isAdmin) {
  reader = readerStore.reader;
  isMan = ref(reader.gender === "男");
}

const saveReader = async () => {
  await updateReaderService(reader);
  await router.push("/book");
  ElMessage.success("已保存");
};

const updateAdmin = async () => {
  console.log(admin);
  await updateAdminService(admin);
  ElMessage.success("已保存");
  await router.push("/adminBook");
};
</script>

<template>
  <div class="bContainer">
      <div>
      <el-main>
        <!--读者个人信息-->
        <el-form
          v-if="!isAdmin"
          ref="ruleFormRef"
          :model="reader"
          status-icon
          label-width="120px"
        >
          <el-form-item class="form-row">
            <h2>个人信息</h2>
          </el-form-item>

          <el-form-item label="用户名" class="form-row">
            <el-input v-model="reader.username" disabled />
          </el-form-item>

          <el-form-item label="密码" class="form-row">
            <el-input v-model="reader.password" />
          </el-form-item>

          <el-form-item label="昵称" class="form-row">
            <el-input v-model="reader.nickname" />
          </el-form-item>

          <el-form-item label="年龄" class="form-row">
            <el-input v-model="reader.age" />
          </el-form-item>

          <el-form-item label="电话" class="form-row">
            <el-input v-model="reader.tel" />
          </el-form-item>

          <el-form-item prop="gender" class="form-row">
            <el-switch
              v-model="isMan"
              class="mb-2"
              style="
                --el-switch-on-color: #13ce66;
                --el-switch-off-color: #ff4949;
              "
              active-text="男"
              inactive-text="女"
              @change="reader.gender = isMan ? '男' : '女'"
            />
          </el-form-item>

          <div class="button-row">
            <el-form-item>
              <el-button type="primary" @click="saveReader()">保存</el-button>
              <el-button type="danger" @click="router.push('/book')"
                >取消</el-button
              >
            </el-form-item>
          </div>
        </el-form>

        <!--管理员个人信息-->
        <el-form
          v-if="isAdmin"
          ref="ruleFormRef"
          :model="admin"
          status-icon
          label-width="120px"

        >
          <el-form-item class="form-row">
            <h2>个人信息</h2>
            <br>
          </el-form-item>
          <el-form-item label="昵称" class="form-row">
            <el-input v-model="admin.nickname" />
          </el-form-item>

          <el-form-item label="密码" class="form-row">
            <el-input v-model="admin.password" />
          </el-form-item>
          <div class="button-row">
            <el-form-item>
              <el-button type="primary" @click="updateAdmin">保存</el-button>
              <el-button type="danger" @click="router.push('/adminBook')"
                >取消</el-button
              >
            </el-form-item>
          </div>
        </el-form>
      </el-main>
      </div>
  </div>
</template>



<style>
.bContainer{
  background: #ffffff;
  border-radius: 8px;
  margin-left: 30%;
  width: 390px;
  padding-right: 50px;
}

el-form{
  margin-right: 80px;
}
.button-row{
  padding-right: 20px;
}
</style>
