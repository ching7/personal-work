import Vue from 'vue'
import Router from 'vue-router'

Vue.use(Router)

/* Layout */
import Layout from '@/layout'

/**
 * Note: sub-menu only appear when route children.length >= 1
 * Detail see: https://panjiachen.github.io/vue-element-admin-site/guide/essentials/router-and-nav.html
 *
 * hidden: true                   if set true, item will not show in the sidebar(default is false)
 * alwaysShow: true               if set true, will always show the root menu
 *                                if not set alwaysShow, when item has more than one children route,
 *                                it will becomes nested mode, otherwise not show the root menu
 * redirect: noRedirect           if set noRedirect will no redirect in the breadcrumb
 * name:'router-name'             the name is used by <keep-alive> (must set!!!)
 * meta : {
    roles: ['admin','editor']    control the page roles (you can set multiple roles)
    title: 'title'               the name show in sidebar and breadcrumb (recommend set)
    icon: 'svg-name'/'el-icon-x' the icon show in the sidebar
    breadcrumb: false            if set false, the item will hidden in breadcrumb(default is true)
    activeMenu: '/example/list'  if set path, the sidebar will highlight the path you set
  }
 */

/**
 * constantRoutes
 * a base page that does not have permission requirements
 * all roles can be accessed
 */
export const constantRoutes = [
  {
    path: '/login',
    component: () => import('@/views/login/index'),
    hidden: true
  },

  {
    path: '/404',
    component: () => import('@/views/404'),
    hidden: true
  },

  {
    path: '/',
    component: Layout,
    redirect: '/dashboard',
    children: [{
      path: 'dashboard',
      name: '商城详情',
      component: () => import('@/views/dashboard/index'),
      meta: { title: '商城详情', icon: 'dashboard' }
    }]
  },
  {
    path: '/product',
    component: Layout,
    redirect: '/product/product',
    name: '产品管理',
    meta: { title: '产品管理', icon: 'el-icon-s-help' },
    children: [
      {
        path: 'product',
        name: '产品详情',
        component: () => import('@/views/product/index'),
        meta: { title: '产品详情', icon: 'table' }
      },
      {
        path: 'prodcategory',
        name: '产品分类',
        component: () => import('@/views/prodcategory/index'),
        meta: { title: '产品分类', icon: 'tree' }
      }
    ]
  },
  {
    path: '/member',
    component: Layout,
    children: [
      {
        path: 'member',
        name: '会员管理',
        component: () => import('@/views/member/index'),
        meta: { title: '会员管理', icon: 'form' }
      }
    ]
  },
  {
    path: '/admin',
    component: Layout,
    children: [
      {
        path: 'admin',
        name: '个人信息',
        component: () => import('@/views/admin/index'),
        meta: { title: '个人信息', icon: 'form' }
      }
    ]
  },

  {
    path: '/order',
    component: Layout,
    redirect: '/order/order',
    name: '订单管理',
    meta: {
      title: '订单管理',
      icon: 'nested'
    },
    children: [
      {
        path: 'order',
        component: () => import('@/views/order/index'),
        name: '订单管理',
        meta: { title: '订单管理' }
      }
    ]
  },

  {
    path: '前台',
    component: Layout,
    children: [
      {
        path: '/#/',
        meta: { title: '前台', icon: 'link' }
      }
    ]
  },

  // 404 page must be placed at the end !!!
  { path: '*', redirect: '/404', hidden: true }
]

const createRouter = () => new Router({
  // mode: 'history', // require service support
  scrollBehavior: () => ({ y: 0 }),
  routes: constantRoutes
})

const router = createRouter()

// Detail see: https://github.com/vuejs/vue-router/issues/1234#issuecomment-357941465
export function resetRouter () {
  const newRouter = createRouter()
  router.matcher = newRouter.matcher // reset router
}

export default router
