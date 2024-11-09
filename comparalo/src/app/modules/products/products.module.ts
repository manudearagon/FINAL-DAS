import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';

import { ProductsRoutingModule } from './products-routing.module';
import { SearchResultsComponent } from './components/search-results/search-results.component';
import { ProductsPageComponent } from './pages/products-page/products-page.component';
import { NavbarComponent } from "../core/layout/navbar/navbar.component";


@NgModule({
  declarations: [
    ProductsPageComponent
  ],
  imports: [
    CommonModule,
    ProductsRoutingModule,
    SearchResultsComponent,
    NavbarComponent
  ]
})
export class ProductsModule { }
