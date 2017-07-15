.class public final Lcom/vungle/publisher/nh;
.super Lcom/vungle/publisher/mv;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/nh$b;,
        Lcom/vungle/publisher/nh$a;,
        Lcom/vungle/publisher/nh$e;,
        Lcom/vungle/publisher/nh$c;,
        Lcom/vungle/publisher/nh$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/mv",
        "<",
        "Lcom/vungle/publisher/sw;",
        ">;"
    }
.end annotation


# instance fields
.field final m:Landroid/os/Handler;

.field n:Ljava/util/concurrent/atomic/AtomicInteger;

.field o:Ljava/util/concurrent/atomic/AtomicInteger;

.field p:Lcom/vungle/publisher/te;

.field q:Lcom/vungle/publisher/og;

.field r:Lcom/vungle/publisher/sw$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field s:Lcom/vungle/publisher/nh$b$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field t:Lcom/vungle/publisher/th;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field u:Lcom/vungle/publisher/nb;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field v:Lcom/vungle/publisher/te$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field w:Lcom/vungle/publisher/og$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 69
    invoke-direct {p0}, Lcom/vungle/publisher/mv;-><init>()V

    .line 38
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/vungle/publisher/nh;->m:Landroid/os/Handler;

    .line 45
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/vungle/publisher/nh;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 46
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/vungle/publisher/nh;->o:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 69
    return-void
.end method

.method static synthetic a(Lcom/vungle/publisher/nh;)V
    .locals 4

    .prologue
    .line 34
    iget-object v0, p0, Lcom/vungle/publisher/nh;->a:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vungle/publisher/nh;->a:Landroid/app/AlertDialog;

    :goto_0
    iput-object v0, p0, Lcom/vungle/publisher/nh;->a:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/vungle/publisher/nh;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/vungle/publisher/nh;->d:Lcom/vungle/publisher/mz;

    invoke-virtual {p0}, Lcom/vungle/publisher/nh;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/vungle/publisher/nh;->h:Lcom/vungle/publisher/n;

    new-instance v3, Lcom/vungle/publisher/nh$2;

    invoke-direct {v3, p0}, Lcom/vungle/publisher/nh$2;-><init>(Lcom/vungle/publisher/nh;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/vungle/publisher/mz;->a(Landroid/content/Context;Lcom/vungle/publisher/n;Lcom/vungle/publisher/mz$a;)Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected final bridge synthetic a(Ljava/lang/String;Lcom/vungle/publisher/n;)Lcom/vungle/publisher/mt;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/vungle/publisher/nh;->r:Lcom/vungle/publisher/sw$a;

    invoke-virtual {v0, p1, p2}, Lcom/vungle/publisher/sw$a;->a(Ljava/lang/String;Lcom/vungle/publisher/n;)Lcom/vungle/publisher/mt;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/sw;

    return-object v0
.end method

.method public final a()V
    .locals 5

    .prologue
    .line 184
    :try_start_0
    iget-object v0, p0, Lcom/vungle/publisher/nh;->f:Lcom/vungle/publisher/mt;

    check-cast v0, Lcom/vungle/publisher/sw;

    iget-object v1, v0, Lcom/vungle/publisher/sw;->b:Lcom/vungle/publisher/sx;

    iget-boolean v1, v1, Lcom/vungle/publisher/sx;->b:Z

    if-eqz v1, :cond_1

    const-string v1, "requestMRAIDClose"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "window.vungle.mraidBridgeExt"

    invoke-static {v3, v0, v1, v2}, Lcom/vungle/publisher/ss;->a(Ljava/lang/String;Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/String;)V

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 184
    :cond_1
    iget-object v1, v0, Lcom/vungle/publisher/sw;->b:Lcom/vungle/publisher/sx;

    iget-boolean v1, v1, Lcom/vungle/publisher/sx;->c:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/vungle/publisher/sw;->getHistoryIndex()I

    move-result v1

    const-string v2, "VungleAd"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "back pressed at index: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-lez v1, :cond_0

    invoke-virtual {v0}, Lcom/vungle/publisher/sw;->goBack()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 189
    :catch_0
    move-exception v0

    .line 190
    const-string v1, "VungleAd"

    const-string v2, "exception in onBackPressed"

    invoke-static {v1, v2, v0}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method final a(Lcom/vungle/publisher/te$b;IJ)V
    .locals 3

    .prologue
    .line 122
    new-instance v0, Lcom/vungle/publisher/nh$c;

    invoke-direct {v0, p0, p1, p2}, Lcom/vungle/publisher/nh$c;-><init>(Lcom/vungle/publisher/nh;Lcom/vungle/publisher/te$b;I)V

    .line 123
    iget-object v1, p0, Lcom/vungle/publisher/nh;->m:Landroid/os/Handler;

    invoke-virtual {v1, v0, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 124
    return-void
.end method

.method public final a(Z)V
    .locals 0

    .prologue
    .line 163
    invoke-super {p0, p1}, Lcom/vungle/publisher/mv;->a(Z)V

    .line 164
    if-eqz p1, :cond_0

    .line 165
    invoke-virtual {p0}, Lcom/vungle/publisher/nh;->onResume()V

    .line 170
    :goto_0
    return-void

    .line 168
    :cond_0
    invoke-virtual {p0}, Lcom/vungle/publisher/nh;->onPause()V

    goto :goto_0
.end method

.method final a(ZIJ)V
    .locals 3

    .prologue
    .line 127
    new-instance v1, Lcom/vungle/publisher/nh$e;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v1, p0, v0, p2}, Lcom/vungle/publisher/nh$e;-><init>(Lcom/vungle/publisher/nh;Ljava/lang/Integer;I)V

    .line 128
    iget-object v0, p0, Lcom/vungle/publisher/nh;->m:Landroid/os/Handler;

    invoke-virtual {v0, v1, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 129
    return-void

    .line 127
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 196
    const-string v0, "fullScreenMraidFragment"

    return-object v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/vungle/publisher/nh;->f:Lcom/vungle/publisher/mt;

    check-cast v0, Lcom/vungle/publisher/sw;

    iget-object v0, v0, Lcom/vungle/publisher/sw;->b:Lcom/vungle/publisher/sx;

    iget-boolean v0, v0, Lcom/vungle/publisher/sx;->b:Z

    return v0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 84
    invoke-super {p0, p1}, Lcom/vungle/publisher/mv;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 85
    iget-object v1, p0, Lcom/vungle/publisher/nh;->t:Lcom/vungle/publisher/th;

    iget-object v0, p0, Lcom/vungle/publisher/nh;->f:Lcom/vungle/publisher/mt;

    iget-object v2, v1, Lcom/vungle/publisher/th;->d:Lcom/vungle/publisher/tp$a;

    invoke-virtual {v2}, Lcom/vungle/publisher/tp$a;->a()Lcom/vungle/publisher/tp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vungle/publisher/tp;->c()V

    :try_start_0
    invoke-virtual {v2}, Lcom/vungle/publisher/tp;->a()Lorg/json/JSONObject;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/vungle/publisher/th;->a(Landroid/webkit/WebView;Lorg/json/JSONObject;Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :goto_0
    return-void

    .line 85
    :catch_0
    move-exception v0

    iget-object v1, v1, Lcom/vungle/publisher/th;->b:Lcom/vungle/publisher/gm$a;

    const-string v2, "VungleAd"

    const-string v3, "could not update mraid dimensions"

    invoke-virtual {v1, v2, v3, v0}, Lcom/vungle/publisher/gm$a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 74
    :try_start_0
    invoke-super {p0, p1}, Lcom/vungle/publisher/mv;->onCreate(Landroid/os/Bundle;)V

    .line 75
    invoke-static {}, Lcom/vungle/publisher/inject/Injector;->b()Lcom/vungle/publisher/sc;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/vungle/publisher/sc;->a(Lcom/vungle/publisher/nh;)V

    .line 76
    iget-object v0, p0, Lcom/vungle/publisher/nh;->s:Lcom/vungle/publisher/nh$b$a;

    invoke-virtual {v0, p0}, Lcom/vungle/publisher/nh$b$a;->a(Lcom/vungle/publisher/nh;)Lcom/vungle/publisher/nh$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/publisher/nh$b;->registerOnce()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :goto_0
    return-void

    .line 77
    :catch_0
    move-exception v0

    .line 78
    const-string v1, "VungleAd"

    const-string v2, "exception while creating Mraid ad fragment"

    invoke-static {v1, v2, v0}, Lcom/vungle/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 90
    invoke-super {p0, p1, p2, p3}, Lcom/vungle/publisher/mv;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 93
    :try_start_0
    iget-object v1, p0, Lcom/vungle/publisher/nh;->v:Lcom/vungle/publisher/te$a;

    new-instance v2, Lcom/vungle/publisher/te;

    iget-object v3, v1, Lcom/vungle/publisher/te$a;->a:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/vungle/publisher/te;-><init>(Landroid/content/Context;B)V

    new-instance v3, Landroid/widget/ImageView;

    iget-object v4, v1, Lcom/vungle/publisher/te$a;->a:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-static {v2, v3}, Lcom/vungle/publisher/te;->a(Lcom/vungle/publisher/te;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    iget-object v1, v1, Lcom/vungle/publisher/te$a;->c:Lcom/vungle/publisher/agw;

    sget-object v4, Lcom/vungle/publisher/rb$a;->a:Lcom/vungle/publisher/rb$a;

    invoke-virtual {v1, v3, v4}, Lcom/vungle/publisher/agw;->a(Landroid/widget/ImageView;Lcom/vungle/publisher/rb$a;)V

    invoke-virtual {v2, v3}, Lcom/vungle/publisher/te;->addView(Landroid/view/View;)V

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v3, 0xb

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    sget-object v1, Lcom/vungle/publisher/te$b;->c:Lcom/vungle/publisher/te$b;

    invoke-virtual {v2, v1}, Lcom/vungle/publisher/te;->setCloseVisibility(Lcom/vungle/publisher/te$b;)V

    iput-object v2, p0, Lcom/vungle/publisher/nh;->p:Lcom/vungle/publisher/te;

    .line 94
    iget-object v1, p0, Lcom/vungle/publisher/nh;->p:Lcom/vungle/publisher/te;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 95
    iget-object v1, p0, Lcom/vungle/publisher/nh;->p:Lcom/vungle/publisher/te;

    invoke-virtual {v1}, Lcom/vungle/publisher/te;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 96
    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 97
    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 98
    iget-object v2, p0, Lcom/vungle/publisher/nh;->v:Lcom/vungle/publisher/te$a;

    iget-object v1, p0, Lcom/vungle/publisher/nh;->p:Lcom/vungle/publisher/te;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v1}, Lcom/vungle/publisher/te;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, v2, Lcom/vungle/publisher/te$a;->b:Lcom/vungle/publisher/nb;

    const/16 v3, 0x32

    invoke-virtual {v2, v3}, Lcom/vungle/publisher/nb;->a(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 99
    :goto_0
    :try_start_2
    sget-object v1, Lcom/vungle/publisher/te$b;->a:Lcom/vungle/publisher/te$b;

    const/4 v2, 0x0

    const-wide/16 v4, 0xbb8

    invoke-virtual {p0, v1, v2, v4, v5}, Lcom/vungle/publisher/nh;->a(Lcom/vungle/publisher/te$b;IJ)V

    .line 100
    iget-object v1, p0, Lcom/vungle/publisher/nh;->p:Lcom/vungle/publisher/te;

    new-instance v2, Lcom/vungle/publisher/nh$1;

    invoke-direct {v2, p0}, Lcom/vungle/publisher/nh$1;-><init>(Lcom/vungle/publisher/nh;)V

    invoke-virtual {v1, v2}, Lcom/vungle/publisher/te;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    iget-object v1, p0, Lcom/vungle/publisher/nh;->w:Lcom/vungle/publisher/og$a;

    iget-object v2, p0, Lcom/vungle/publisher/nh;->l:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/vungle/publisher/og$a;->a(Landroid/content/Context;Z)Lcom/vungle/publisher/og;

    move-result-object v1

    iput-object v1, p0, Lcom/vungle/publisher/nh;->q:Lcom/vungle/publisher/og;

    .line 109
    iget-object v1, p0, Lcom/vungle/publisher/nh;->q:Lcom/vungle/publisher/og;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 110
    iget-object v1, p0, Lcom/vungle/publisher/nh;->q:Lcom/vungle/publisher/og;

    invoke-virtual {v1}, Lcom/vungle/publisher/og;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 111
    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 112
    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 113
    const/4 v1, 0x1

    const/4 v2, 0x0

    const-wide/16 v4, 0xbb8

    invoke-virtual {p0, v1, v2, v4, v5}, Lcom/vungle/publisher/nh;->a(ZIJ)V

    .line 114
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 118
    :goto_1
    return-object v0

    .line 98
    :catch_0
    move-exception v1

    const-string v1, "VungleAd"

    const-string v2, "could not set close region dimensions. did you add it to a view yet?"

    invoke-static {v1, v2}, Lcom/vungle/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 115
    :catch_1
    move-exception v1

    .line 116
    iget-object v2, p0, Lcom/vungle/publisher/nh;->c:Lcom/vungle/publisher/gm$a;

    const-string v3, "VungleAd"

    const-string v4, "error creating MraidAdFragment"

    invoke-virtual {v2, v3, v4, v1}, Lcom/vungle/publisher/gm$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public final onDestroy()V
    .locals 1

    .prologue
    .line 137
    invoke-super {p0}, Lcom/vungle/publisher/mv;->onDestroy()V

    .line 138
    iget-object v0, p0, Lcom/vungle/publisher/nh;->s:Lcom/vungle/publisher/nh$b$a;

    invoke-virtual {v0, p0}, Lcom/vungle/publisher/nh$b$a;->a(Lcom/vungle/publisher/nh;)Lcom/vungle/publisher/nh$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/publisher/nh$b;->unregister()V

    .line 139
    return-void
.end method

.method public final onPause()V
    .locals 4

    .prologue
    .line 154
    :try_start_0
    invoke-super {p0}, Lcom/vungle/publisher/mv;->onPause()V

    .line 155
    iget-object v0, p0, Lcom/vungle/publisher/nh;->t:Lcom/vungle/publisher/th;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/vungle/publisher/nh;->f:Lcom/vungle/publisher/mt;

    invoke-virtual {v0, v1, v2}, Lcom/vungle/publisher/th;->a(ZLandroid/webkit/WebView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    :goto_0
    return-void

    .line 156
    :catch_0
    move-exception v0

    .line 157
    iget-object v1, p0, Lcom/vungle/publisher/nh;->c:Lcom/vungle/publisher/gm$a;

    const-string v2, "VungleAd"

    const-string v3, "error pausing mraid ad"

    invoke-virtual {v1, v2, v3, v0}, Lcom/vungle/publisher/gm$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final onResume()V
    .locals 4

    .prologue
    .line 144
    :try_start_0
    invoke-super {p0}, Lcom/vungle/publisher/mv;->onResume()V

    .line 145
    iget-object v0, p0, Lcom/vungle/publisher/nh;->t:Lcom/vungle/publisher/th;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/vungle/publisher/nh;->f:Lcom/vungle/publisher/mt;

    invoke-virtual {v0, v1, v2}, Lcom/vungle/publisher/th;->a(ZLandroid/webkit/WebView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    :goto_0
    return-void

    .line 146
    :catch_0
    move-exception v0

    .line 147
    iget-object v1, p0, Lcom/vungle/publisher/nh;->c:Lcom/vungle/publisher/gm$a;

    const-string v2, "VungleAd"

    const-string v3, "error resuming mraid ad"

    invoke-virtual {v1, v2, v3, v0}, Lcom/vungle/publisher/gm$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
