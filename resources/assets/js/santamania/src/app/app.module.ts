import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';

import { AppComponent } from './app.component';
import { MenuComponent } from './components/menu/menu.component';
import { UserComponent } from './user/user.component';
import { LoginComponent } from './login/login.component';
import { TopbarComponent } from './components/topbar/topbar.component';
import { FooterComponent } from './components/footer/footer.component';

@NgModule({
    declarations: [
        AppComponent,
        MenuComponent,
        TopbarComponent,
        FooterComponent
    ],
    imports     : [
        BrowserModule
    ],
    providers   : [],
    bootstrap   : [
        AppComponent
    ]
})
export class AppModule {
}
