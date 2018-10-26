import Vue from 'vue'
import Router from 'vue-router'
import Home from './views/Home.vue'
import Index from './views/Index'
import About from './views/About'
import Teacher from './views/Teacher'
import Login from './views/Login'
import Register from './views/Register'
import Openclass from './views/Openclass'

Vue.use(Router)

export default new Router({
  mode:'history',
  routes: [
    {path: '/',component: Home,children:[
    		{path:'',component:Index},
    		{path:'about',component:About},
    		{path:'teacher',component:Teacher},
    		{path:'openclass/:id',component:Openclass},
    ]},
    {path: '/login',component: Login},
    {path: '/register',component: Register},
    {path: '*',redirect:'/'}
  ]
})
