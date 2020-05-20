import { NgModule } from '@angular/core';
import { PreloadAllModules, RouterModule, Routes } from '@angular/router';

/**
const routes: Routes = [
  {
    path: '',
    component: Tab1Page,
  }
];
 */
const routes: Routes = [
 // {
 //   path: '',
 //   loadChildren: () => import('./tabs/tabs.module').then(m => m.TabsPageModule)
 // }
{
    path: '',
   loadChildren: () => import('./tab1/tab1.module').then(m => m.Tab1PageModule)
}

];
@NgModule({
  imports: [
    RouterModule.forRoot(routes, { preloadingStrategy: PreloadAllModules })
  ],
  exports: [RouterModule]
})
export class AppRoutingModule {}
