.class public Lcom/fyber/cache/CacheVideoDownloadService;
.super Landroid/app/Service;
.source "CacheVideoDownloadService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fyber/cache/CacheVideoDownloadService$a;,
        Lcom/fyber/cache/CacheVideoDownloadService$c;,
        Lcom/fyber/cache/CacheVideoDownloadService$b;,
        Lcom/fyber/cache/CacheVideoDownloadService$d;
    }
.end annotation


# static fields
.field private static a:Lcom/fyber/cache/internal/ConfigurationBroadcastReceiver;


# instance fields
.field private b:Lcom/fyber/cache/CacheVideoDownloadService$b;

.field private c:Lcom/fyber/cache/CacheVideoDownloadService$c;

.field private d:Lcom/fyber/cache/CacheVideoDownloadService$a;

.field private e:Z

.field private volatile f:I

.field private volatile g:Z

.field private h:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 88
    iput-boolean v1, p0, Lcom/fyber/cache/CacheVideoDownloadService;->e:Z

    .line 92
    sget v0, Lcom/fyber/cache/CacheVideoDownloadService$d;->a:I

    iput v0, p0, Lcom/fyber/cache/CacheVideoDownloadService;->f:I

    .line 93
    iput-boolean v1, p0, Lcom/fyber/cache/CacheVideoDownloadService;->g:Z

    .line 698
    new-instance v0, Lcom/fyber/cache/CacheVideoDownloadService$1;

    invoke-direct {v0, p0}, Lcom/fyber/cache/CacheVideoDownloadService$1;-><init>(Lcom/fyber/cache/CacheVideoDownloadService;)V

    iput-object v0, p0, Lcom/fyber/cache/CacheVideoDownloadService;->h:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lcom/fyber/cache/CacheVideoDownloadService;I)I
    .locals 0

    .prologue
    .line 50
    iput p1, p0, Lcom/fyber/cache/CacheVideoDownloadService;->f:I

    return p1
.end method

.method static synthetic a(Lcom/fyber/cache/CacheVideoDownloadService;)Lcom/fyber/cache/CacheVideoDownloadService$c;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/fyber/cache/CacheVideoDownloadService;->c:Lcom/fyber/cache/CacheVideoDownloadService$c;

    return-object v0
.end method

.method private a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 756
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/fyber/cache/CacheVideoDownloadService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".cache.DONE_PRECACHING"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/fyber/cache/CacheVideoDownloadService;Z)Z
    .locals 0

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/fyber/cache/CacheVideoDownloadService;->g:Z

    return p1
.end method

.method static synthetic b(Lcom/fyber/cache/CacheVideoDownloadService;I)V
    .locals 4

    .prologue
    const/16 v0, 0x12c

    .line 4256
    new-instance v1, Landroid/content/Intent;

    invoke-direct {p0}, Lcom/fyber/cache/CacheVideoDownloadService;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4257
    if-ge p1, v0, :cond_0

    move p1, v0

    .line 4260
    :cond_0
    const-string v0, "refresh.interval"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4261
    const-string v0, "CacheVideoDownloadService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Creating broadcast receiver with refresh interval = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/fyber/utils/FyberLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4262
    invoke-virtual {p0, v1}, Lcom/fyber/cache/CacheVideoDownloadService;->sendBroadcast(Landroid/content/Intent;)V

    .line 50
    return-void
.end method

.method static synthetic b(Lcom/fyber/cache/CacheVideoDownloadService;)Z
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/fyber/cache/CacheVideoDownloadService;->e:Z

    return v0
.end method

.method static synthetic c(Lcom/fyber/cache/CacheVideoDownloadService;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 50
    .line 2219
    iget-boolean v0, p0, Lcom/fyber/cache/CacheVideoDownloadService;->e:Z

    if-nez v0, :cond_0

    .line 2236
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ServiceDownloadThread"

    invoke-direct {v0, v1, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 2237
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 2238
    new-instance v1, Lcom/fyber/cache/CacheVideoDownloadService$c;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/fyber/cache/CacheVideoDownloadService$c;-><init>(Lcom/fyber/cache/CacheVideoDownloadService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/fyber/cache/CacheVideoDownloadService;->c:Lcom/fyber/cache/CacheVideoDownloadService$c;

    .line 2242
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ServiceDecisionThread"

    invoke-direct {v0, v1, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 2243
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 2244
    new-instance v1, Lcom/fyber/cache/CacheVideoDownloadService$a;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/fyber/cache/CacheVideoDownloadService$a;-><init>(Lcom/fyber/cache/CacheVideoDownloadService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/fyber/cache/CacheVideoDownloadService;->d:Lcom/fyber/cache/CacheVideoDownloadService$a;

    .line 3231
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 3232
    invoke-virtual {p0}, Lcom/fyber/cache/CacheVideoDownloadService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/fyber/cache/CacheVideoDownloadService;->h:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2225
    iput-boolean v3, p0, Lcom/fyber/cache/CacheVideoDownloadService;->e:Z

    .line 50
    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/fyber/cache/CacheVideoDownloadService;)Lcom/fyber/cache/CacheVideoDownloadService$a;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/fyber/cache/CacheVideoDownloadService;->d:Lcom/fyber/cache/CacheVideoDownloadService$a;

    return-object v0
.end method

.method static synthetic e(Lcom/fyber/cache/CacheVideoDownloadService;)Lcom/fyber/cache/internal/a$a;
    .locals 2

    .prologue
    .line 50
    .line 3751
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/fyber/cache/CacheVideoDownloadService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 3752
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 3739
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3740
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 3747
    :cond_0
    const/4 v0, 0x0

    .line 3744
    :goto_0
    return-object v0

    .line 3742
    :pswitch_0
    sget-object v0, Lcom/fyber/cache/internal/a$a;->a:Lcom/fyber/cache/internal/a$a;

    goto :goto_0

    .line 3744
    :pswitch_1
    sget-object v0, Lcom/fyber/cache/internal/a$a;->b:Lcom/fyber/cache/internal/a$a;

    goto :goto_0

    .line 3740
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic f(Lcom/fyber/cache/CacheVideoDownloadService;)Lcom/fyber/cache/CacheVideoDownloadService$b;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/fyber/cache/CacheVideoDownloadService;->b:Lcom/fyber/cache/CacheVideoDownloadService$b;

    return-object v0
.end method

.method static synthetic g(Lcom/fyber/cache/CacheVideoDownloadService;)I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/fyber/cache/CacheVideoDownloadService;->f:I

    return v0
.end method

.method static synthetic h(Lcom/fyber/cache/CacheVideoDownloadService;)Z
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/fyber/cache/CacheVideoDownloadService;->g:Z

    return v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 196
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 106
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 111
    sget-object v0, Lcom/fyber/cache/CacheVideoDownloadService;->a:Lcom/fyber/cache/internal/ConfigurationBroadcastReceiver;

    if-nez v0, :cond_0

    .line 112
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 113
    invoke-direct {p0}, Lcom/fyber/cache/CacheVideoDownloadService;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 114
    new-instance v1, Lcom/fyber/cache/internal/ConfigurationBroadcastReceiver;

    invoke-direct {v1}, Lcom/fyber/cache/internal/ConfigurationBroadcastReceiver;-><init>()V

    sput-object v1, Lcom/fyber/cache/CacheVideoDownloadService;->a:Lcom/fyber/cache/internal/ConfigurationBroadcastReceiver;

    .line 115
    invoke-virtual {p0}, Lcom/fyber/cache/CacheVideoDownloadService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/fyber/cache/CacheVideoDownloadService;->a:Lcom/fyber/cache/internal/ConfigurationBroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1248
    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ServiceDispatcherThread"

    invoke-direct {v0, v1, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 1249
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 1250
    new-instance v1, Lcom/fyber/cache/CacheVideoDownloadService$b;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/fyber/cache/CacheVideoDownloadService$b;-><init>(Lcom/fyber/cache/CacheVideoDownloadService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/fyber/cache/CacheVideoDownloadService;->b:Lcom/fyber/cache/CacheVideoDownloadService$b;

    .line 120
    invoke-static {}, Lcom/fyber/cache/CacheManager;->a()Lcom/fyber/cache/CacheManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fyber/cache/CacheManager;->c()Lcom/fyber/cache/internal/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fyber/cache/internal/f;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    invoke-static {}, Lcom/fyber/cache/CacheManager;->a()Lcom/fyber/cache/CacheManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/fyber/cache/CacheManager;->a(Z)V

    .line 123
    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 204
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 205
    const-string v0, "CacheVideoDownloadService"

    const-string v1, "The service will shutdown"

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    invoke-static {}, Lcom/fyber/cache/CacheManager;->a()Lcom/fyber/cache/CacheManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fyber/cache/CacheManager;->a(Z)V

    .line 207
    iget-object v0, p0, Lcom/fyber/cache/CacheVideoDownloadService;->b:Lcom/fyber/cache/CacheVideoDownloadService$b;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/fyber/cache/CacheVideoDownloadService;->b:Lcom/fyber/cache/CacheVideoDownloadService$b;

    invoke-virtual {v0}, Lcom/fyber/cache/CacheVideoDownloadService$b;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 210
    :cond_0
    iget-boolean v0, p0, Lcom/fyber/cache/CacheVideoDownloadService;->e:Z

    if-eqz v0, :cond_1

    .line 211
    iget-object v0, p0, Lcom/fyber/cache/CacheVideoDownloadService;->d:Lcom/fyber/cache/CacheVideoDownloadService$a;

    invoke-virtual {v0}, Lcom/fyber/cache/CacheVideoDownloadService$a;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 212
    iget-object v0, p0, Lcom/fyber/cache/CacheVideoDownloadService;->c:Lcom/fyber/cache/CacheVideoDownloadService$c;

    invoke-virtual {v0}, Lcom/fyber/cache/CacheVideoDownloadService$c;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 214
    invoke-virtual {p0}, Lcom/fyber/cache/CacheVideoDownloadService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/fyber/cache/CacheVideoDownloadService;->h:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 216
    :cond_1
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5

    .prologue
    const/16 v4, 0xa

    const/16 v3, 0x64

    .line 132
    const-string v0, "CacheVideoDownloadService"

    const-string v1, "onStartCommand called on the service"

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    if-eqz p1, :cond_7

    .line 134
    const-string v0, "action.to.perform"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 138
    invoke-static {}, Lcom/fyber/cache/CacheManager;->a()Lcom/fyber/cache/CacheManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fyber/cache/CacheManager;->c()Lcom/fyber/cache/internal/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fyber/cache/internal/f;->d()Z

    move-result v1

    .line 139
    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/fyber/cache/CacheVideoDownloadService;->e:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/fyber/cache/CacheVideoDownloadService;->f:I

    sget v2, Lcom/fyber/cache/CacheVideoDownloadService$d;->a:I

    if-ne v1, v2, :cond_1

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/fyber/cache/CacheVideoDownloadService;->b:Lcom/fyber/cache/CacheVideoDownloadService$b;

    invoke-virtual {v0, v3}, Lcom/fyber/cache/CacheVideoDownloadService$b;->sendEmptyMessage(I)Z

    .line 187
    :goto_0
    const/4 v0, 0x2

    return v0

    .line 142
    :cond_1
    sparse-switch v0, :sswitch_data_0

    .line 162
    invoke-static {}, Lcom/fyber/Fyber;->getConfigs()Lcom/fyber/Fyber$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fyber/Fyber$a;->d()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 163
    invoke-static {}, Lcom/fyber/cache/CacheManager;->a()Lcom/fyber/cache/CacheManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fyber/cache/CacheManager;->e()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 167
    sget v0, Lcom/fyber/cache/CacheVideoDownloadService$d;->c:I

    iput v0, p0, Lcom/fyber/cache/CacheVideoDownloadService;->f:I

    goto :goto_0

    .line 144
    :sswitch_0
    sget v0, Lcom/fyber/cache/CacheVideoDownloadService$d;->b:I

    iput v0, p0, Lcom/fyber/cache/CacheVideoDownloadService;->f:I

    .line 145
    iget-object v0, p0, Lcom/fyber/cache/CacheVideoDownloadService;->b:Lcom/fyber/cache/CacheVideoDownloadService$b;

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Lcom/fyber/cache/CacheVideoDownloadService$b;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 148
    :sswitch_1
    iget v0, p0, Lcom/fyber/cache/CacheVideoDownloadService;->f:I

    .line 149
    sget v1, Lcom/fyber/cache/CacheVideoDownloadService$d;->a:I

    iput v1, p0, Lcom/fyber/cache/CacheVideoDownloadService;->f:I

    .line 150
    invoke-static {}, Lcom/fyber/cache/CacheManager;->a()Lcom/fyber/cache/CacheManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fyber/cache/CacheManager;->e()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 154
    sget v0, Lcom/fyber/cache/CacheVideoDownloadService$d;->c:I

    iput v0, p0, Lcom/fyber/cache/CacheVideoDownloadService;->f:I

    goto :goto_0

    .line 155
    :cond_2
    sget v1, Lcom/fyber/cache/CacheVideoDownloadService$d;->c:I

    if-eq v0, v1, :cond_3

    iget-boolean v0, p0, Lcom/fyber/cache/CacheVideoDownloadService;->e:Z

    if-nez v0, :cond_4

    .line 156
    :cond_3
    iget-object v0, p0, Lcom/fyber/cache/CacheVideoDownloadService;->b:Lcom/fyber/cache/CacheVideoDownloadService$b;

    invoke-virtual {v0, v4}, Lcom/fyber/cache/CacheVideoDownloadService$b;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 158
    :cond_4
    iget-object v0, p0, Lcom/fyber/cache/CacheVideoDownloadService;->d:Lcom/fyber/cache/CacheVideoDownloadService$a;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Lcom/fyber/cache/CacheVideoDownloadService$a;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 169
    :cond_5
    iget-object v0, p0, Lcom/fyber/cache/CacheVideoDownloadService;->b:Lcom/fyber/cache/CacheVideoDownloadService$b;

    invoke-virtual {v0, v4}, Lcom/fyber/cache/CacheVideoDownloadService$b;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 172
    :cond_6
    const-string v0, "CacheVideoDownloadService"

    const-string v1, "The SDK appears to not have been started yet..."

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/fyber/cache/CacheVideoDownloadService;->b:Lcom/fyber/cache/CacheVideoDownloadService$b;

    invoke-virtual {v0, v3}, Lcom/fyber/cache/CacheVideoDownloadService$b;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 179
    :cond_7
    const-string v0, "CacheVideoDownloadService"

    const-string v1, "Intent is null. Service is unable to start."

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lcom/fyber/cache/CacheVideoDownloadService;->b:Lcom/fyber/cache/CacheVideoDownloadService$b;

    if-eqz v0, :cond_8

    .line 182
    iget-object v0, p0, Lcom/fyber/cache/CacheVideoDownloadService;->b:Lcom/fyber/cache/CacheVideoDownloadService$b;

    invoke-virtual {v0, v3}, Lcom/fyber/cache/CacheVideoDownloadService$b;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 184
    :cond_8
    invoke-virtual {p0}, Lcom/fyber/cache/CacheVideoDownloadService;->stopSelf()V

    goto :goto_0

    .line 142
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x14 -> :sswitch_1
    .end sparse-switch
.end method
