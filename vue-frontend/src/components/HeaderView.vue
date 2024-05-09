<script setup>
import {useReaderStore} from "@/stores/reader.js";
import {useAdminStore} from "@/stores/admin.js";
import {ref} from "vue";
import {useTokenStore} from "@/stores/token.js";


const adminStore = useAdminStore();
const readerStore = useReaderStore();
const tokenStore = useTokenStore();

const isAdmin = adminStore.isAdmin;

//显示名字标签
let tag = ref();
tag.value = isAdmin ? adminStore.admin.nickname : readerStore.reader.nickname;




</script>

<template>
  <div class="user-info" style="background-color: white;">
    <div class="avatar">
      <el-avatar
          shape="circle"
          :size="42"
          :fit="'cover'"
          src="src/assets/profile.jpg"
      />
    </div>
    <div class="content">
      <div>
      <el-tag type="success" size="large" round>
        {{ tag }}
      </el-tag></div>
      <div>
      <el-tag v-if="isAdmin" type="success" size="large" round>
        管理员
      </el-tag>
      <el-tag v-else size="large" round type="success"> 读者</el-tag></div>
      <div class="source-code"> <el-tag @click="gotoOfficialSite" size="large" round>访问源码仓库</el-tag>
    </div>
    </div>
  </div>
</template>

<script>
export default {
  methods: {
    gotoOfficialSite() {
      window.open('https://github.com/MidkDuKe/Book-borrowing-Managment-System', '_blank');
    }
  }
};
</script>
<style>
.user-info div{
  display: flex;
}
.user-info {
  display: flex;
  align-items: center;
  padding: 10px;
}
.avatar {
  margin-left: 20px;
}
.content div{
  margin-left: 20px;
}
.source-code{
  margin-left: 20px ;
}
</style>