.class final Lcom/vungle/publisher/InitializationEventListener$1;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/InitializationEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vungle/publisher/InitializationEventListener;


# direct methods
.method constructor <init>(Lcom/vungle/publisher/InitializationEventListener;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/vungle/publisher/InitializationEventListener$1;->a:Lcom/vungle/publisher/InitializationEventListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 102
    iget-object v0, p0, Lcom/vungle/publisher/InitializationEventListener$1;->a:Lcom/vungle/publisher/InitializationEventListener;

    iget-object v0, v0, Lcom/vungle/publisher/InitializationEventListener;->e:Lcom/vungle/publisher/InitializationEventListener$b;

    invoke-virtual {v0}, Lcom/vungle/publisher/InitializationEventListener$b;->register()V

    .line 103
    iget-object v0, p0, Lcom/vungle/publisher/InitializationEventListener$1;->a:Lcom/vungle/publisher/InitializationEventListener;

    iget-object v0, v0, Lcom/vungle/publisher/InitializationEventListener;->f:Lcom/vungle/publisher/InitializationEventListener$a;

    invoke-virtual {v0}, Lcom/vungle/publisher/InitializationEventListener$a;->register()V

    .line 104
    iget-object v0, p0, Lcom/vungle/publisher/InitializationEventListener$1;->a:Lcom/vungle/publisher/InitializationEventListener;

    iget-object v0, v0, Lcom/vungle/publisher/InitializationEventListener;->g:Lcom/vungle/publisher/py;

    invoke-virtual {v0, v7}, Lcom/vungle/publisher/py;->a(Z)V

    .line 105
    iget-object v0, p0, Lcom/vungle/publisher/InitializationEventListener$1;->a:Lcom/vungle/publisher/InitializationEventListener;

    iget-object v0, v0, Lcom/vungle/publisher/InitializationEventListener;->d:Lcom/vungle/publisher/afy;

    iget-object v1, v0, Lcom/vungle/publisher/afy;->b:Lcom/vungle/publisher/cq$b;

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "status"

    sget-object v4, Lcom/vungle/publisher/cq$c;->d:Lcom/vungle/publisher/cq$c;

    invoke-virtual {v4}, Lcom/vungle/publisher/cq$c;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v1, Lcom/vungle/publisher/cq$b;->a:Lcom/vungle/publisher/cf;

    invoke-virtual {v1}, Lcom/vungle/publisher/cf;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v3, "ad_report"

    const-string v4, "status = ?"

    new-array v5, v7, [Ljava/lang/String;

    sget-object v6, Lcom/vungle/publisher/cq$c;->c:Lcom/vungle/publisher/cq$c;

    invoke-virtual {v6}, Lcom/vungle/publisher/cq$c;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v1, v3, v2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v1, v0, Lcom/vungle/publisher/afy;->g:Lcom/vungle/publisher/py;

    iget-object v1, v1, Lcom/vungle/publisher/py;->l:Landroid/content/SharedPreferences;

    const-string v2, "IsVgAppInstalled"

    invoke-interface {v1, v2, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "VungleReport"

    const-string v2, "install already reported"

    invoke-static {v1, v2}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0}, Lcom/vungle/publisher/afy;->a()V

    .line 106
    iget-object v0, p0, Lcom/vungle/publisher/InitializationEventListener$1;->a:Lcom/vungle/publisher/InitializationEventListener;

    iget-object v1, v0, Lcom/vungle/publisher/InitializationEventListener;->a:Lcom/vungle/publisher/a;

    invoke-virtual {v1, v7}, Lcom/vungle/publisher/a;->b(Z)V

    iget-object v0, v1, Lcom/vungle/publisher/a;->j:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/a$a;

    invoke-virtual {v0}, Lcom/vungle/publisher/a$a;->register()V

    invoke-virtual {v1}, Lcom/vungle/publisher/a;->registerOnce()V

    .line 107
    iget-object v0, p0, Lcom/vungle/publisher/InitializationEventListener$1;->a:Lcom/vungle/publisher/InitializationEventListener;

    iget-object v0, v0, Lcom/vungle/publisher/InitializationEventListener;->c:Lcom/vungle/publisher/yc;

    invoke-virtual {v0}, Lcom/vungle/publisher/yc;->a()V

    .line 108
    return-void

    .line 105
    :cond_0
    const-string v1, "VungleReport"

    const-string v2, "reporting install"

    invoke-static {v1, v2}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/vungle/publisher/afy;->f:Lcom/vungle/publisher/yc;

    new-instance v2, Lcom/vungle/publisher/xk;

    invoke-direct {v2}, Lcom/vungle/publisher/xk;-><init>()V

    invoke-virtual {v1, v2}, Lcom/vungle/publisher/yc;->a(Lcom/vungle/publisher/xk;)V

    goto :goto_0
.end method
