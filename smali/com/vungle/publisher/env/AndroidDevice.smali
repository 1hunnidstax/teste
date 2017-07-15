.class public final Lcom/vungle/publisher/env/AndroidDevice;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Lcom/vungle/publisher/pn;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/env/AndroidDevice$DeviceIdStrategy;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field static a:I


# instance fields
.field final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public c:Z

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Lcom/vungle/publisher/lr;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public h:Landroid/view/WindowManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public i:Landroid/content/Context;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public j:Lcom/vungle/publisher/ql;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public k:Landroid/content/SharedPreferences;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public l:Lcom/vungle/publisher/env/AndroidDevice$DeviceIdStrategy;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public m:Ljava/lang/String;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final n:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/16 v0, 0x1388

    sput v0, Lcom/vungle/publisher/env/AndroidDevice;->a:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v0, p0, Lcom/vungle/publisher/env/AndroidDevice;->n:Ljava/lang/String;

    .line 44
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/vungle/publisher/env/AndroidDevice;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 74
    invoke-static {}, Lcom/vungle/publisher/inject/Injector;->b()Lcom/vungle/publisher/sc;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/vungle/publisher/sc;->a(Lcom/vungle/publisher/env/AndroidDevice;)V

    .line 75
    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 126
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private t()V
    .locals 6

    .prologue
    .line 151
    :try_start_0
    iget-object v0, p0, Lcom/vungle/publisher/env/AndroidDevice;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    .line 152
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget v2, Lcom/vungle/publisher/env/AndroidDevice;->a:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 153
    iget-object v2, p0, Lcom/vungle/publisher/env/AndroidDevice;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 154
    :try_start_1
    const-string v3, "VungleDevice"

    const-string v4, "waiting for device ID"

    invoke-static {v3, v4}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    :goto_0
    iget-object v3, p0, Lcom/vungle/publisher/env/AndroidDevice;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v4

    cmp-long v3, v4, v0

    if-gez v3, :cond_1

    .line 157
    :try_start_2
    iget-object v3, p0, Lcom/vungle/publisher/env/AndroidDevice;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    sget v4, Lcom/vungle/publisher/env/AndroidDevice;->a:I

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 160
    :catch_0
    move-exception v3

    :try_start_3
    const-string v3, "VungleDevice"

    const-string v4, "interrupted while awaiting device ID"

    invoke-static {v3, v4}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 163
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 173
    :catchall_1
    move-exception v0

    invoke-virtual {p0}, Lcom/vungle/publisher/env/AndroidDevice;->f()Z

    move-result v1

    if-nez v1, :cond_0

    .line 174
    const-string v1, "VungleDevice"

    const-string v2, "no device ID available"

    invoke-static {v1, v2}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    throw v0

    .line 163
    :cond_1
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 164
    :try_start_6
    iget-object v0, p0, Lcom/vungle/publisher/env/AndroidDevice;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 165
    const-string v0, "VungleDevice"

    const-string v1, "obtained device ID"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 173
    :cond_2
    invoke-virtual {p0}, Lcom/vungle/publisher/env/AndroidDevice;->f()Z

    move-result v0

    if-nez v0, :cond_3

    .line 174
    const-string v0, "VungleDevice"

    const-string v1, "no device ID available"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    :cond_3
    return-void

    .line 168
    :cond_4
    :try_start_7
    new-instance v0, Lcom/vungle/publisher/po;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "timeout after "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/vungle/publisher/env/AndroidDevice;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vungle/publisher/po;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/vungle/publisher/env/AndroidDevice;->t()V

    .line 80
    iget-object v0, p0, Lcom/vungle/publisher/env/AndroidDevice;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Landroid/webkit/WebView;)V
    .locals 3

    .prologue
    .line 348
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    .line 349
    iget-object v1, p0, Lcom/vungle/publisher/env/AndroidDevice;->k:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "defaultUserAgent"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 350
    return-void
.end method

.method public final a(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 353
    const-string v0, "keyguard"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 354
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    return v0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/vungle/publisher/env/AndroidDevice;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 292
    .line 294
    :try_start_0
    iget-object v0, p0, Lcom/vungle/publisher/env/AndroidDevice;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 295
    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 296
    :goto_0
    if-nez v0, :cond_0

    .line 297
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Google Play Services not available: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->getErrorString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/vungle/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_2

    .line 308
    :cond_0
    :goto_1
    return v0

    :cond_1
    move v0, v1

    .line 295
    goto :goto_0

    .line 300
    :catch_0
    move-exception v0

    move-object v4, v0

    move v0, v1

    move-object v1, v4

    .line 302
    :goto_2
    const-string v2, "VungleConfig"

    invoke-static {v1}, Lcom/vungle/publisher/ago;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 304
    :catch_1
    move-exception v0

    move-object v4, v0

    move v0, v1

    move-object v1, v4

    .line 305
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/NoClassDefFoundError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    invoke-static {p1, v1}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 304
    :catch_2
    move-exception v1

    goto :goto_3

    .line 300
    :catch_3
    move-exception v1

    goto :goto_2
.end method

.method public final c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/vungle/publisher/env/AndroidDevice;->t()V

    .line 107
    iget-object v0, p0, Lcom/vungle/publisher/env/AndroidDevice;->e:Ljava/lang/String;

    .line 108
    invoke-static {v0}, Lcom/vungle/publisher/env/AndroidDevice;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/vungle/publisher/env/AndroidDevice;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    const-string v0, "VungleDevice"

    const-string v1, "have advertising and Android ID"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-virtual {p0}, Lcom/vungle/publisher/env/AndroidDevice;->d()V

    .line 111
    const/4 v0, 0x0

    .line 113
    :cond_0
    return-object v0
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 117
    const-string v0, "VungleDevice"

    const-string v1, "clearing Android ID"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vungle/publisher/env/AndroidDevice;->e:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public final e()V
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/vungle/publisher/env/AndroidDevice;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    .line 142
    if-nez v0, :cond_0

    .line 143
    iget-object v1, p0, Lcom/vungle/publisher/env/AndroidDevice;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 144
    :try_start_0
    iget-object v0, p0, Lcom/vungle/publisher/env/AndroidDevice;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 145
    monitor-exit v1

    .line 147
    :cond_0
    return-void

    .line 145
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final f()Z
    .locals 1

    .prologue
    .line 180
    invoke-virtual {p0}, Lcom/vungle/publisher/env/AndroidDevice;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vungle/publisher/env/AndroidDevice;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/vungle/publisher/env/AndroidDevice;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/vungle/publisher/env/AndroidDevice;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/vungle/publisher/env/AndroidDevice;->n:Ljava/lang/String;

    return-object v0
.end method

.method public final h()Landroid/util/DisplayMetrics;
    .locals 4

    .prologue
    .line 190
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 192
    :try_start_0
    iget-object v0, p0, Lcom/vungle/publisher/env/AndroidDevice;->h:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 193
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    :goto_0
    return-object v1

    .line 195
    :catch_0
    move-exception v0

    .line 196
    const-string v2, "VungleDevice"

    const-string v3, "error getting display metrics"

    invoke-static {v2, v3, v0}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final i()Z
    .locals 1

    .prologue
    .line 203
    iget-boolean v0, p0, Lcom/vungle/publisher/env/AndroidDevice;->c:Z

    return v0
.end method

.method public final j()Ljava/lang/String;
    .locals 2

    .prologue
    .line 212
    iget-object v0, p0, Lcom/vungle/publisher/env/AndroidDevice;->f:Ljava/lang/String;

    .line 213
    invoke-virtual {p0}, Lcom/vungle/publisher/env/AndroidDevice;->l()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/vungle/publisher/env/AndroidDevice;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 214
    const-string v0, "VungleDevice"

    const-string v1, "have advertising and mac address"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    invoke-virtual {p0}, Lcom/vungle/publisher/env/AndroidDevice;->k()V

    .line 216
    const/4 v0, 0x0

    .line 218
    :cond_0
    return-object v0
.end method

.method public final k()V
    .locals 2

    .prologue
    .line 222
    const-string v0, "VungleDevice"

    const-string v1, "clearing MAC address"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vungle/publisher/env/AndroidDevice;->f:Ljava/lang/String;

    .line 224
    return-void
.end method

.method public final l()Z
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/vungle/publisher/env/AndroidDevice;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final m()Ljava/lang/String;
    .locals 4

    .prologue
    .line 246
    const/4 v0, 0x0

    .line 248
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, ""

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string v1, ""

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 256
    :goto_2
    return-object v0

    .line 248
    :cond_0
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    goto :goto_0

    :cond_1
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 253
    :catch_0
    move-exception v1

    .line 254
    const-string v2, "VungleDevice"

    const-string v3, "error getting device model"

    invoke-static {v2, v3, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public final n()Ljava/lang/Float;
    .locals 4

    .prologue
    .line 261
    const/4 v0, 0x0

    .line 263
    :try_start_0
    iget-object v1, p0, Lcom/vungle/publisher/env/AndroidDevice;->g:Lcom/vungle/publisher/lr;

    invoke-virtual {v1}, Lcom/vungle/publisher/lr;->c()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 268
    :goto_0
    return-object v0

    .line 265
    :catch_0
    move-exception v1

    .line 266
    const-string v2, "VungleDevice"

    const-string v3, "error getting volume info"

    invoke-static {v2, v3, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final o()Z
    .locals 4

    .prologue
    .line 273
    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 275
    iget-object v1, p0, Lcom/vungle/publisher/env/AndroidDevice;->i:Landroid/content/Context;

    invoke-static {v1}, Lcom/vungle/publisher/agr;->a(Landroid/content/Context;)Z

    move-result v1

    .line 277
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 278
    const-string v2, "VungleDevice"

    const-string v3, "external storage writable"

    invoke-static {v2, v3}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    :goto_0
    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 281
    :cond_0
    const-string v2, "VungleDevice"

    const-string v3, "external storage not writable"

    invoke-static {v2, v3}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 283
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final p()Ljava/lang/String;
    .locals 1

    .prologue
    .line 313
    const-string v0, "VungleDevice"

    invoke-virtual {p0, v0}, Lcom/vungle/publisher/env/AndroidDevice;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 314
    const v0, 0x3d8024

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 316
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final q()V
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/vungle/publisher/env/AndroidDevice;->l:Lcom/vungle/publisher/env/AndroidDevice$DeviceIdStrategy;

    invoke-virtual {v0, p0}, Lcom/vungle/publisher/env/AndroidDevice$DeviceIdStrategy;->c(Lcom/vungle/publisher/env/AndroidDevice;)V

    .line 323
    return-void
.end method

.method public final r()Ljava/lang/String;
    .locals 3

    .prologue
    .line 343
    iget-object v0, p0, Lcom/vungle/publisher/env/AndroidDevice;->k:Landroid/content/SharedPreferences;

    const-string v1, "defaultUserAgent"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final s()Ljava/lang/Long;
    .locals 4

    .prologue
    .line 361
    :try_start_0
    new-instance v0, Landroid/os/StatFs;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/vungle/publisher/env/AndroidDevice;->m:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 362
    sget-object v1, Lcom/vungle/publisher/pj;->f:Lcom/vungle/publisher/pj;

    invoke-static {v1}, Lcom/vungle/publisher/agl;->a(Lcom/vungle/publisher/pj;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 363
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v2

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v0

    mul-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 368
    :goto_0
    return-object v0

    .line 365
    :cond_0
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    mul-int/2addr v0, v1

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 368
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method
