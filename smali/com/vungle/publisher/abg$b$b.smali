.class public final Lcom/vungle/publisher/abg$b$b;
.super Lcom/vungle/publisher/abw;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/abg$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/abw",
        "<",
        "Lcom/vungle/publisher/abg$b;",
        ">;"
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field a:Landroid/content/Context;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected b:Lcom/vungle/publisher/AdConfig;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected c:Lcom/vungle/publisher/pn;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected d:Lcom/vungle/publisher/abg$b$a$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected e:Lcom/vungle/publisher/uq;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected f:Lcom/vungle/publisher/pu;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private g:Landroid/os/PowerManager;

.field private h:Landroid/content/Intent;


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 306
    invoke-direct {p0}, Lcom/vungle/publisher/abw;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()Lcom/vungle/publisher/abg$b;
    .locals 5

    .prologue
    .line 309
    new-instance v1, Lcom/vungle/publisher/abg$b;

    invoke-direct {v1}, Lcom/vungle/publisher/abg$b;-><init>()V

    .line 310
    iget-object v0, p0, Lcom/vungle/publisher/abg$b$b;->e:Lcom/vungle/publisher/uq;

    invoke-interface {v0}, Lcom/vungle/publisher/uq;->e()Lcom/vungle/publisher/uo;

    move-result-object v0

    .line 311
    iget-object v2, v0, Lcom/vungle/publisher/uo;->s:Lcom/vungle/publisher/un;

    iput-object v2, v1, Lcom/vungle/publisher/abg$b;->a:Lcom/vungle/publisher/un;

    .line 312
    iget-object v0, v0, Lcom/vungle/publisher/uo;->r:Ljava/lang/String;

    iput-object v0, v1, Lcom/vungle/publisher/abg$b;->b:Ljava/lang/String;

    .line 313
    iget-object v0, p0, Lcom/vungle/publisher/abg$b$b;->d:Lcom/vungle/publisher/abg$b$a$a;

    invoke-virtual {v0}, Lcom/vungle/publisher/abg$b$a$a;->a()Lcom/vungle/publisher/abg$b$a;

    move-result-object v0

    iput-object v0, v1, Lcom/vungle/publisher/abg$b;->h:Lcom/vungle/publisher/abg$b$a;

    .line 314
    iget-object v0, p0, Lcom/vungle/publisher/abg$b$b;->c:Lcom/vungle/publisher/pn;

    invoke-interface {v0}, Lcom/vungle/publisher/pn;->o()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v1, Lcom/vungle/publisher/abg$b;->i:Ljava/lang/Boolean;

    .line 315
    iget-object v0, p0, Lcom/vungle/publisher/abg$b$b;->b:Lcom/vungle/publisher/AdConfig;

    invoke-virtual {v0}, Lcom/vungle/publisher/AdConfig;->isSoundEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v1, Lcom/vungle/publisher/abg$b;->j:Ljava/lang/Boolean;

    .line 316
    iget-object v0, p0, Lcom/vungle/publisher/abg$b$b;->c:Lcom/vungle/publisher/pn;

    invoke-interface {v0}, Lcom/vungle/publisher/pn;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/vungle/publisher/abg$b;->k:Ljava/lang/String;

    .line 317
    iget-object v0, p0, Lcom/vungle/publisher/abg$b$b;->c:Lcom/vungle/publisher/pn;

    invoke-interface {v0}, Lcom/vungle/publisher/pn;->m()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/vungle/publisher/abg$b;->l:Ljava/lang/String;

    .line 318
    iget-object v0, p0, Lcom/vungle/publisher/abg$b$b;->e:Lcom/vungle/publisher/uq;

    invoke-interface {v0}, Lcom/vungle/publisher/uq;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/vungle/publisher/abg$b;->m:Ljava/lang/String;

    .line 319
    iget-object v0, p0, Lcom/vungle/publisher/abg$b$b;->c:Lcom/vungle/publisher/pn;

    invoke-interface {v0}, Lcom/vungle/publisher/pn;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/vungle/publisher/abg$b;->n:Ljava/lang/String;

    .line 320
    sget-object v0, Lcom/vungle/publisher/abg$b$c;->a:Lcom/vungle/publisher/abg$b$c;

    iput-object v0, v1, Lcom/vungle/publisher/abg$b;->o:Lcom/vungle/publisher/abg$b$c;

    .line 321
    iget-object v0, p0, Lcom/vungle/publisher/abg$b$b;->c:Lcom/vungle/publisher/pn;

    invoke-interface {v0}, Lcom/vungle/publisher/pn;->n()Ljava/lang/Float;

    move-result-object v0

    iput-object v0, v1, Lcom/vungle/publisher/abg$b;->p:Ljava/lang/Float;

    .line 322
    iget-object v0, p0, Lcom/vungle/publisher/abg$b$b;->c:Lcom/vungle/publisher/pn;

    invoke-interface {v0}, Lcom/vungle/publisher/pn;->r()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/vungle/publisher/abg$b;->q:Ljava/lang/String;

    .line 323
    iget-object v0, p0, Lcom/vungle/publisher/abg$b$b;->c:Lcom/vungle/publisher/pn;

    invoke-interface {v0}, Lcom/vungle/publisher/pn;->s()Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v1, Lcom/vungle/publisher/abg$b;->r:Ljava/lang/Long;

    .line 324
    sget-object v0, Lcom/vungle/publisher/pj;->j:Lcom/vungle/publisher/pj;

    invoke-static {v0}, Lcom/vungle/publisher/agl;->a(Lcom/vungle/publisher/pj;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/vungle/publisher/abg$b$b;->e:Lcom/vungle/publisher/uq;

    invoke-interface {v0}, Lcom/vungle/publisher/uq;->c()Lcom/vungle/publisher/up;

    move-result-object v0

    iget-object v0, v0, Lcom/vungle/publisher/up;->f:Ljava/lang/String;

    iput-object v0, v1, Lcom/vungle/publisher/abg$b;->c:Ljava/lang/String;

    .line 327
    :cond_0
    sget-object v0, Lcom/vungle/publisher/pj;->d:Lcom/vungle/publisher/pj;

    invoke-static {v0}, Lcom/vungle/publisher/agl;->a(Lcom/vungle/publisher/pj;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 328
    iget-object v0, p0, Lcom/vungle/publisher/abg$b$b;->e:Lcom/vungle/publisher/uq;

    invoke-interface {v0}, Lcom/vungle/publisher/uq;->d()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v1, Lcom/vungle/publisher/abg$b;->g:Ljava/lang/Boolean;

    .line 331
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/vungle/publisher/abg$b$b;->a:Landroid/content/Context;

    if-eqz v0, :cond_5

    .line 332
    sget-object v0, Lcom/vungle/publisher/pj;->h:Lcom/vungle/publisher/pj;

    invoke-static {v0}, Lcom/vungle/publisher/agl;->a(Lcom/vungle/publisher/pj;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 333
    iget-object v0, p0, Lcom/vungle/publisher/abg$b$b;->a:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/vungle/publisher/abg$b$b;->g:Landroid/os/PowerManager;

    .line 334
    new-instance v0, Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/vungle/publisher/abg$b$b;->g:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v2

    invoke-direct {v0, v2}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v0, v1, Lcom/vungle/publisher/abg$b;->f:Ljava/lang/Boolean;

    .line 336
    :cond_2
    iget-object v0, p0, Lcom/vungle/publisher/abg$b$b;->h:Landroid/content/Intent;

    if-nez v0, :cond_3

    .line 337
    iget-object v0, p0, Lcom/vungle/publisher/abg$b$b;->a:Landroid/content/Context;

    const/4 v2, 0x0

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/abg$b$b;->h:Landroid/content/Intent;

    .line 338
    :cond_3
    iget-object v0, p0, Lcom/vungle/publisher/abg$b$b;->h:Landroid/content/Intent;

    if-eqz v0, :cond_5

    .line 339
    sget-object v0, Lcom/vungle/publisher/lu;->a:Lcom/vungle/publisher/lu;

    iget-object v0, p0, Lcom/vungle/publisher/abg$b$b;->h:Landroid/content/Intent;

    const-string v2, "status"

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_4

    const/4 v2, 0x5

    if-ne v0, v2, :cond_6

    :cond_4
    iget-object v0, p0, Lcom/vungle/publisher/abg$b$b;->h:Landroid/content/Intent;

    const-string v2, "plugged"

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    sget-object v0, Lcom/vungle/publisher/lu;->f:Lcom/vungle/publisher/lu;

    :goto_0
    invoke-virtual {v0}, Lcom/vungle/publisher/lu;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/vungle/publisher/abg$b;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/vungle/publisher/abg$b$b;->h:Landroid/content/Intent;

    const-string v2, "level"

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iget-object v2, p0, Lcom/vungle/publisher/abg$b$b;->h:Landroid/content/Intent;

    const-string v3, "scale"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-lez v0, :cond_5

    if-lez v2, :cond_5

    int-to-float v0, v0

    int-to-float v2, v2

    div-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, v1, Lcom/vungle/publisher/abg$b;->d:Ljava/lang/Float;

    .line 344
    :cond_5
    :goto_1
    return-object v1

    .line 339
    :pswitch_1
    sget-object v0, Lcom/vungle/publisher/lu;->c:Lcom/vungle/publisher/lu;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/vungle/publisher/lu;->d:Lcom/vungle/publisher/lu;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/vungle/publisher/lu;->e:Lcom/vungle/publisher/lu;

    goto :goto_0

    :cond_6
    sget-object v0, Lcom/vungle/publisher/lu;->b:Lcom/vungle/publisher/lu;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 341
    :catch_0
    move-exception v0

    .line 342
    const-string v2, "VungleProtocol"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception while collecting battery stats: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 339
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected final bridge synthetic a(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 281
    new-array v0, p1, [Lcom/vungle/publisher/abg$b;

    return-object v0
.end method

.method protected final synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 281
    new-instance v0, Lcom/vungle/publisher/abg$b;

    invoke-direct {v0}, Lcom/vungle/publisher/abg$b;-><init>()V

    return-object v0
.end method
