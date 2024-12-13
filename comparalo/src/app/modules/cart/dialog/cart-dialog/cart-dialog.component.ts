import { CommonModule } from '@angular/common';
import { Component } from '@angular/core';
import { Router } from '@angular/router';
import { NzButtonModule } from 'ng-zorro-antd/button';
import { NzDrawerRef, NzDrawerService } from 'ng-zorro-antd/drawer';

@Component({
  selector: 'app-cart-dialog',
  standalone: true,
  imports: [
    CommonModule,
    NzButtonModule
  ],
  templateUrl: './cart-dialog.component.html',
  styleUrl: './cart-dialog.component.scss'
})
export class CartDialogComponent {
  constructor(
    private router: Router,
    private drawerRef: NzDrawerRef
  ) {

  }

  goToCheckout() {
    this.router.navigate(['/checkout']);
    this.drawerRef.close();
  }
}
