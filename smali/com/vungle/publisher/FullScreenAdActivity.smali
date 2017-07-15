.class public Lcom/vungle/publisher/FullScreenAdActivity;
.super Landroid/app/Activity;
.source "vungle"


# static fields
.field public static final AD_ID_EXTRA_KEY:Ljava/lang/String; = "adId"

.field public static final AD_TYPE_EXTRA_KEY:Ljava/lang/String; = "adType"


# instance fields
.field a:Lcom/vungle/publisher/ne;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vungle/publisher/ne",
            "<",
            "Lcom/vungle/publisher/cj;",
            ">;"
        }
    .end annotation
.end field

.field b:Lcom/vungle/publisher/ql;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field c:Lcom/vungle/publisher/bw;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field d:Lcom/vungle/publisher/py;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field e:Lcom/vungle/publisher/cj$b;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field f:Lcom/vungle/publisher/lr;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field g:Lcom/vungle/publisher/gm$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field h:Lcom/vungle/publisher/ne$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field i:Lcom/vungle/publisher/q;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private j:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 65
    return-void
.end method

.method static synthetic a(Lcom/vungle/publisher/FullScreenAdActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/vungle/publisher/FullScreenAdActivity;->j:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method final a(Lcom/vungle/publisher/n;)V
    .locals 2

    .prologue
    .line 114
    sget-object v0, Lcom/vungle/publisher/pj;->g:Lcom/vungle/publisher/pj;

    invoke-static {v0}, Lcom/vungle/publisher/agl;->a(Lcom/vungle/publisher/pj;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/vungle/publisher/n;->isImmersiveMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/vungle/publisher/FullScreenAdActivity;->j:Landroid/view/View;

    const/16 v1, 0x1706

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 122
    iget-object v0, p0, Lcom/vungle/publisher/FullScreenAdActivity;->j:Landroid/view/View;

    new-instance v1, Lcom/vungle/publisher/FullScreenAdActivity$1;

    invoke-direct {v1, p0, p1}, Lcom/vungle/publisher/FullScreenAdActivity$1;-><init>(Lcom/vungle/publisher/FullScreenAdActivity;Lcom/vungle/publisher/n;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 131
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 4

    .prologue
    .line 194
    :try_start_0
    const-string v0, "VungleAd"

    const-string v1, "back button pressed"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcom/vungle/publisher/FullScreenAdActivity;->b:Lcom/vungle/publisher/ql;

    new-instance v1, Lcom/vungle/publisher/t;

    invoke-direct {v1}, Lcom/vungle/publisher/t;-><init>()V

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/ql;->a(Ljava/lang/Object;)V

    .line 196
    iget-object v0, p0, Lcom/vungle/publisher/FullScreenAdActivity;->a:Lcom/vungle/publisher/ne;

    iget-object v0, v0, Lcom/vungle/publisher/ne;->c:Lcom/vungle/publisher/ms;

    invoke-virtual {v0}, Lcom/vungle/publisher/ms;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    :goto_0
    return-void

    .line 197
    :catch_0
    move-exception v0

    .line 198
    iget-object v1, p0, Lcom/vungle/publisher/FullScreenAdActivity;->g:Lcom/vungle/publisher/gm$a;

    const-string v2, "VungleAd"

    const-string v3, "error in onBackPressed"

    invoke-virtual {v1, v2, v3, v0}, Lcom/vungle/publisher/gm$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 69
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    :try_start_0
    const-string v1, "VungleAd"

    const-string v2, "interstitial ad"

    invoke-static {v1, v2}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-static {}, Lcom/vungle/publisher/inject/Injector;->b()Lcom/vungle/publisher/sc;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/vungle/publisher/sc;->a(Lcom/vungle/publisher/FullScreenAdActivity;)V

    .line 75
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    move-object v1, v0

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x1000000

    const/high16 v3, 0x1000000

    invoke-virtual {v1, v2, v3}, Landroid/view/Window;->setFlags(II)V

    .line 77
    invoke-virtual {p0}, Lcom/vungle/publisher/FullScreenAdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 78
    const-string v1, "adConfig"

    invoke-virtual {v2, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "adConfig"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/vungle/publisher/n;

    .line 79
    const-string v3, "adId"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 80
    const-string v4, "adType"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/vungle/publisher/j;

    .line 81
    iget-object v4, p0, Lcom/vungle/publisher/FullScreenAdActivity;->e:Lcom/vungle/publisher/cj$b;

    new-instance v5, Lcom/vungle/publisher/cj$b$2;

    invoke-direct {v5, v4, v3}, Lcom/vungle/publisher/cj$b$2;-><init>(Lcom/vungle/publisher/cj$b;Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Lcom/vungle/publisher/cj$b$2;->a(Lcom/vungle/publisher/j;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vungle/publisher/cj;

    .line 82
    if-nez v2, :cond_0

    .line 83
    const-string v1, "VungleAd"

    const-string v2, "no ad in activity"

    invoke-static {v1, v2}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iget-object v1, p0, Lcom/vungle/publisher/FullScreenAdActivity;->b:Lcom/vungle/publisher/ql;

    new-instance v2, Lcom/vungle/publisher/bl;

    invoke-direct {v2}, Lcom/vungle/publisher/bl;-><init>()V

    invoke-virtual {v1, v2}, Lcom/vungle/publisher/ql;->a(Ljava/lang/Object;)V

    .line 85
    invoke-virtual {p0}, Lcom/vungle/publisher/FullScreenAdActivity;->finish()V

    .line 100
    :goto_0
    return-void

    .line 88
    :cond_0
    const-string v3, "VungleAd"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "creating ad activity with status: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/vungle/publisher/cj;->g()Lcom/vungle/publisher/cj$c;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-object v3, p0, Lcom/vungle/publisher/FullScreenAdActivity;->h:Lcom/vungle/publisher/ne$a;

    new-instance v4, Lcom/vungle/publisher/ne$a$1;

    invoke-direct {v4, v3}, Lcom/vungle/publisher/ne$a$1;-><init>(Lcom/vungle/publisher/ne$a;)V

    invoke-virtual {v4, v2}, Lcom/vungle/publisher/ne$a$1;->a(Lcom/vungle/publisher/cj;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vungle/publisher/ne;

    iput-object v3, p0, Lcom/vungle/publisher/FullScreenAdActivity;->a:Lcom/vungle/publisher/ne;

    .line 90
    invoke-virtual {p0}, Lcom/vungle/publisher/FullScreenAdActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/vungle/publisher/FullScreenAdActivity;->j:Landroid/view/View;

    .line 91
    invoke-virtual {p0, v1}, Lcom/vungle/publisher/FullScreenAdActivity;->a(Lcom/vungle/publisher/n;)V

    .line 92
    sget-object v3, Lcom/vungle/publisher/pj;->j:Lcom/vungle/publisher/pj;

    invoke-static {v3}, Lcom/vungle/publisher/agl;->a(Lcom/vungle/publisher/pj;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 93
    iget-object v3, p0, Lcom/vungle/publisher/FullScreenAdActivity;->j:Landroid/view/View;

    new-instance v4, Lcom/vungle/publisher/FullScreenAdActivity$2;

    invoke-direct {v4, p0}, Lcom/vungle/publisher/FullScreenAdActivity$2;-><init>(Lcom/vungle/publisher/FullScreenAdActivity;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 95
    :cond_1
    iget-object v3, p0, Lcom/vungle/publisher/FullScreenAdActivity;->a:Lcom/vungle/publisher/ne;

    invoke-virtual {v3, p0, v2, v1, p1}, Lcom/vungle/publisher/ne;->a(Lcom/vungle/publisher/FullScreenAdActivity;Lcom/vungle/publisher/cj;Lcom/vungle/publisher/n;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 96
    :catch_0
    move-exception v1

    .line 97
    const-string v2, "VungleAd"

    const-string v3, "error playing ad"

    invoke-static {v2, v3, v1}, Lcom/vungle/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 98
    invoke-virtual {p0}, Lcom/vungle/publisher/FullScreenAdActivity;->finish()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 177
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 179
    :try_start_0
    iget-object v0, p0, Lcom/vungle/publisher/FullScreenAdActivity;->a:Lcom/vungle/publisher/ne;

    invoke-virtual {v0, p0}, Lcom/vungle/publisher/ne;->a(Lcom/vungle/publisher/FullScreenAdActivity;)V

    .line 180
    iget-object v0, p0, Lcom/vungle/publisher/FullScreenAdActivity;->d:Lcom/vungle/publisher/py;

    const-string v1, "VungleAd"

    const-string v2, "onAdActivityDestroy()"

    invoke-static {v1, v2}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v0, Lcom/vungle/publisher/py;->i:Lcom/vungle/publisher/pp;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/pp;->a(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    :goto_0
    invoke-virtual {p0}, Lcom/vungle/publisher/FullScreenAdActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 186
    const-string v0, "VungleAd"

    const-string v1, "finishing ad that is being destroyed"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    invoke-virtual {p0}, Lcom/vungle/publisher/FullScreenAdActivity;->finish()V

    .line 189
    :cond_0
    return-void

    .line 181
    :catch_0
    move-exception v0

    .line 182
    const-string v1, "VungleAd"

    const-string v2, "error in onDestroy()"

    invoke-static {v1, v2, v0}, Lcom/vungle/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 204
    iget-object v0, p0, Lcom/vungle/publisher/FullScreenAdActivity;->a:Lcom/vungle/publisher/ne;

    iget-object v0, v0, Lcom/vungle/publisher/ne;->c:Lcom/vungle/publisher/ms;

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/ms;->a(I)Z

    .line 205
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .locals 4

    .prologue
    .line 167
    :try_start_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 168
    iget-object v0, p0, Lcom/vungle/publisher/FullScreenAdActivity;->d:Lcom/vungle/publisher/py;

    const-string v1, "VungleAd"

    const-string v2, "onAdActivityPause()"

    invoke-static {v1, v2}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/vungle/publisher/py;->i:Lcom/vungle/publisher/pp;

    invoke-virtual {v0}, Lcom/vungle/publisher/py;->b()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/vungle/publisher/pp;->e:J

    .line 169
    iget-object v0, p0, Lcom/vungle/publisher/FullScreenAdActivity;->c:Lcom/vungle/publisher/bw;

    iget-object v0, v0, Lcom/vungle/publisher/bw;->a:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    :goto_0
    return-void

    .line 170
    :catch_0
    move-exception v0

    .line 171
    iget-object v1, p0, Lcom/vungle/publisher/FullScreenAdActivity;->g:Lcom/vungle/publisher/gm$a;

    const-string v2, "VungleAd"

    const-string v3, "error in onPause()"

    invoke-virtual {v1, v2, v3, v0}, Lcom/vungle/publisher/gm$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 157
    :try_start_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 158
    iget-object v0, p0, Lcom/vungle/publisher/FullScreenAdActivity;->d:Lcom/vungle/publisher/py;

    const-string v1, "VungleAd"

    const-string v2, "onAdActivityResume()"

    invoke-static {v1, v2}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/py;->a(Z)V

    iget-object v0, v0, Lcom/vungle/publisher/py;->i:Lcom/vungle/publisher/pp;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/vungle/publisher/pp;->e:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    :goto_0
    return-void

    .line 159
    :catch_0
    move-exception v0

    .line 160
    iget-object v1, p0, Lcom/vungle/publisher/FullScreenAdActivity;->g:Lcom/vungle/publisher/gm$a;

    const-string v2, "VungleAd"

    const-string v3, "error in onResume()"

    invoke-virtual {v1, v2, v3, v0}, Lcom/vungle/publisher/gm$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 105
    :try_start_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 106
    iget-object v1, p0, Lcom/vungle/publisher/FullScreenAdActivity;->a:Lcom/vungle/publisher/ne;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v0, "currentFragment"

    iget-object v2, v1, Lcom/vungle/publisher/ne;->c:Lcom/vungle/publisher/ms;

    invoke-virtual {v2}, Lcom/vungle/publisher/ms;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 110
    :goto_0
    return-void

    .line 106
    :catch_0
    move-exception v0

    :try_start_2
    iget-object v1, v1, Lcom/vungle/publisher/ne;->h:Lcom/vungle/publisher/gm$a;

    const-string v2, "VungleAd"

    const-string v3, "error in onSaveInstanceState"

    invoke-virtual {v1, v2, v3, v0}, Lcom/vungle/publisher/gm$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 107
    :catch_1
    move-exception v0

    .line 108
    iget-object v1, p0, Lcom/vungle/publisher/FullScreenAdActivity;->g:Lcom/vungle/publisher/gm$a;

    const-string v2, "VungleAd"

    const-string v3, "error in onSaveInstanceState"

    invoke-virtual {v1, v2, v3, v0}, Lcom/vungle/publisher/gm$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4
    .param p1, "hasFocus"    # Z

    .prologue
    .line 211
    :try_start_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 212
    iget-object v0, p0, Lcom/vungle/publisher/FullScreenAdActivity;->a:Lcom/vungle/publisher/ne;

    iget-object v0, v0, Lcom/vungle/publisher/ne;->c:Lcom/vungle/publisher/ms;

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/ms;->a(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    :goto_0
    return-void

    .line 213
    :catch_0
    move-exception v0

    .line 214
    iget-object v1, p0, Lcom/vungle/publisher/FullScreenAdActivity;->g:Lcom/vungle/publisher/gm$a;

    const-string v2, "VungleAd"

    const-string v3, "error in onWindowFocusChanged"

    invoke-virtual {v1, v2, v3, v0}, Lcom/vungle/publisher/gm$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
