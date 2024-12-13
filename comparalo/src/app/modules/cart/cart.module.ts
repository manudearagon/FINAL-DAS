import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';

import { CartRoutingModule } from './cart-routing.module';
import { CartDialogComponent } from './dialog/cart-dialog/cart-dialog.component';


@NgModule({
  declarations: [
  ],
  imports: [
    CommonModule,
    CartRoutingModule,
    CartDialogComponent
  ],
  exports: [
    CartDialogComponent,
  ]
})
export class CartModule { }
