.class public final Lcom/vungle/publisher/py;
.super Ljava/lang/Object;
.source "vungle"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field a:Landroid/content/Context;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field b:Lcom/vungle/publisher/agt;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field c:Lcom/vungle/publisher/cc;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field d:Lcom/vungle/publisher/pn;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field e:Lcom/vungle/publisher/ql;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field f:Lcom/vungle/publisher/lv;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field g:Lcom/vungle/publisher/ur;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field h:Lcom/vungle/publisher/bt;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public i:Lcom/vungle/publisher/pp;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field j:Lcom/vungle/publisher/yc;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field k:Lcom/vungle/publisher/gm$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public l:Landroid/content/SharedPreferences;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field m:J

.field final n:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final o:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>()V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/vungle/publisher/py;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 84
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/vungle/publisher/py;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 78
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/vungle/publisher/py;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 99
    return-void
.end method

.method public final a(J)V
    .locals 5

    .prologue
    .line 116
    iget-object v0, p0, Lcom/vungle/publisher/py;->l:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "VgSleepWakeupTime"

    .line 117
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, p1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 118
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 119
    return-void
.end method

.method public final a(Z)V
    .locals 4

    .prologue
    .line 159
    iget-object v0, p0, Lcom/vungle/publisher/py;->f:Lcom/vungle/publisher/lv;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "file"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/vungle/publisher/lv;->a:Landroid/content/Context;

    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/vungle/publisher/py;->g:Lcom/vungle/publisher/ur;

    iget-object v1, v0, Lcom/vungle/publisher/ur;->b:Landroid/content/Context;

    sget-object v2, Lcom/vungle/publisher/ur;->a:Landroid/content/IntentFilter;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/vungle/publisher/py;->c:Lcom/vungle/publisher/cc;

    iget-object v1, v0, Lcom/vungle/publisher/cc;->a:Landroid/content/Context;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.vungle.publisher.db.DUMP_TABLES"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 160
    iget-object v0, p0, Lcom/vungle/publisher/py;->d:Lcom/vungle/publisher/pn;

    invoke-interface {v0}, Lcom/vungle/publisher/pn;->q()V

    .line 161
    iget-object v0, p0, Lcom/vungle/publisher/py;->h:Lcom/vungle/publisher/bt;

    sget-object v1, Lcom/vungle/publisher/bt$b;->l:Lcom/vungle/publisher/bt$b;

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/bt;->a(Lcom/vungle/publisher/bt$b;)V

    .line 163
    iget-object v0, p0, Lcom/vungle/publisher/py;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {v0}, Lcom/vungle/publisher/agn;->a(Ljava/util/concurrent/atomic/AtomicInteger;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vungle/publisher/py;->m:J

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/vungle/publisher/py;->j:Lcom/vungle/publisher/yc;

    iget-wide v2, p0, Lcom/vungle/publisher/py;->m:J

    invoke-virtual {v0, v2, v3}, Lcom/vungle/publisher/yc;->a(J)V

    .line 166
    :cond_0
    if-eqz p1, :cond_1

    .line 167
    iget-object v0, p0, Lcom/vungle/publisher/py;->e:Lcom/vungle/publisher/ql;

    new-instance v1, Lcom/vungle/publisher/am;

    invoke-direct {v1}, Lcom/vungle/publisher/am;-><init>()V

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/ql;->a(Ljava/lang/Object;)V

    .line 169
    :cond_1
    return-void

    .line 163
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()J
    .locals 8

    .prologue
    .line 182
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 183
    iget-wide v4, p0, Lcom/vungle/publisher/py;->m:J

    .line 184
    iget-object v0, p0, Lcom/vungle/publisher/py;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    .line 185
    iget-object v0, p0, Lcom/vungle/publisher/py;->f:Lcom/vungle/publisher/lv;

    :try_start_0
    iget-object v1, v0, Lcom/vungle/publisher/lv;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/vungle/publisher/py;->g:Lcom/vungle/publisher/ur;

    :try_start_1
    iget-object v1, v0, Lcom/vungle/publisher/ur;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    iget-object v0, p0, Lcom/vungle/publisher/py;->c:Lcom/vungle/publisher/cc;

    :try_start_2
    iget-object v1, v0, Lcom/vungle/publisher/cc;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    .line 186
    :goto_2
    iget-object v0, p0, Lcom/vungle/publisher/py;->h:Lcom/vungle/publisher/bt;

    new-instance v1, Lcom/vungle/publisher/py$1;

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/vungle/publisher/py$1;-><init>(Lcom/vungle/publisher/py;IJJ)V

    sget-object v2, Lcom/vungle/publisher/bt$b;->k:Lcom/vungle/publisher/bt$b;

    const-wide/16 v4, 0x2710

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/vungle/publisher/bt;->a(Ljava/lang/Runnable;Lcom/vungle/publisher/bt$b;J)V

    .line 199
    return-wide v6

    .line 185
    :catch_0
    move-exception v0

    const-string v0, "VungleDevice"

    const-string v1, "error unregistering external storage state broadcast receiver - not registered"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v0, "VungleNetwork"

    const-string v1, "error unregistering network broadcast receiver - not registered"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_2
    move-exception v0

    const-string v0, "VungleDumpDatabase"

    const-string v1, "error unregistering database broadcast receiver - not registered"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method
