<template>
  <el-menu v-model="activeIndex" class="el-menu-vertical-demo">
    <el-menu-item index="1" @click="route">
      <el-icon>
        <Notebook/>
      </el-icon>
      <el-button link :type="'primary'">图书信息</el-button>
    </el-menu-item>

    <el-menu-item
        v-if="!adminStore.isAdmin"
        index="2"
        @click="router.push('/borrow')"
    >
      <el-icon>
        <search/>
      </el-icon>
      <el-button link :type="'primary'">借阅记录</el-button>
    </el-menu-item>

    <el-menu-item
        v-if="adminStore.isAdmin"
        index="4"
        @click="router.push('/reader')"
    >
      <el-icon>
        <setting/>
      </el-icon>
      <el-button link :type="'primary'">用户管理</el-button>
    </el-menu-item>

    <el-menu-item index="3" @click="router.push('/user')">
      <el-icon>
        <User/>
      </el-icon>
      <el-button link :type="'primary'">个人信息</el-button>
    </el-menu-item>



    <el-menu-item index="5" @click="logout">
      <el-icon>
        <switch-button/>
      </el-icon>
      <el-button link :type="'danger'">退出登录</el-button>
    </el-menu-item>
  </el-menu>
</template>

<script lang="ts" setup>
import {Notebook, Search, Setting, SwitchButton, User} from "@element-plus/icons-vue";

import {ref} from "vue";

const activeIndex = ref("1");

import {useRouter} from "vue-router";
import {useTokenStore} from "@/stores/token";
import {useReaderStore} from "@/stores/reader";
import {useAdminStore} from "@/stores/admin";
import {logoutService} from "@/methods/logout.js";
import {ElMessage} from "element-plus";


const adminStore = useAdminStore();
const tokenStore = useTokenStore();
const readerStore = useReaderStore();

const router = useRouter();

const logout = async () => {
  await logoutService();
  ElMessage.success("已退出登录!")
  // 退出后清除token、reader和admin信息
  tokenStore.setToken(null);
  readerStore.clearReader();
  adminStore.clearAdmin();
  await router.push("/login");
};

const route = () => {
  if (adminStore.isAdmin) {
    router.push("/adminBook");
  } else {
    router.push("/book");
  }
};
</script>


