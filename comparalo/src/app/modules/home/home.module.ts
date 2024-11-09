import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';

import { HomeRoutingModule } from './home-routing.module';
import { HomeComponent } from './pages/home/home.component';
import { SearchResultsComponent } from '../products/components/search-results/search-results.component';
import { FormsModule } from '@angular/forms';
import { LocationModalComponent } from '../core/dialogs/location-modal/location-modal.component';
import { NavbarComponent } from '../core/layout/navbar/navbar.component';


@NgModule({
  declarations: [
    HomeComponent
  ],
  imports: [
    CommonModule,
    HomeRoutingModule,
    NavbarComponent,
    LocationModalComponent,
    CommonModule,
    FormsModule,
    SearchResultsComponent
  ]
})
export class HomeModule { }
