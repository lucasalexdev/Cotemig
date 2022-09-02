import { NgModule } from "@angular/core";
import { RouterModule, Routes } from "@angular/router";

//Importação dos componentes para conteúdo
import { HomeComponent } from "./views/home/home.component";
import { PaymentComponent } from "./views/payment/payment.component";
import { PaymentCreateComponent } from "./components/payment/payment-create/payment-create.component";

const routes: Routes = [
  {
    path: "",
    component: HomeComponent,
  },
  {
    path: "payments",
    component: PaymentComponent,
  },
  {
    path: "payments/create",
    component: PaymentCreateComponent ,
  },
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule],
})
export class AppRoutingModule {}
