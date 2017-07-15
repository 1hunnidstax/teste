.class public final Lcom/vungle/publisher/afq$a;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Lcom/vungle/publisher/aif;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/afq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/vungle/publisher/aif",
        "<",
        "Lcom/vungle/publisher/adf;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/vungle/publisher/py;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field b:Lcom/vungle/publisher/pp;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field c:Lcom/vungle/publisher/ql;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field d:Lcom/vungle/publisher/bt;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 16
    check-cast p1, Lcom/vungle/publisher/adf;

    iget-object v0, p0, Lcom/vungle/publisher/afq$a;->a:Lcom/vungle/publisher/py;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/vungle/publisher/py;->a(J)V

    iget-boolean v0, p1, Lcom/vungle/publisher/adf;->k:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vungle/publisher/afq$a;->b:Lcom/vungle/publisher/pp;

    iget-object v1, p1, Lcom/vungle/publisher/ade;->g:Ljava/lang/Integer;

    if-nez v1, :cond_0

    const-string v0, "VungleAd"

    const-string v1, "ignoring set null min ad delay seconds"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "VungleAd"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "setting min ad delay seconds: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v0, Lcom/vungle/publisher/pp;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "VgAdDelayDuration"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/vungle/publisher/adf;->b()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/vungle/publisher/afq$a;->a:Lcom/vungle/publisher/py;

    invoke-virtual {v2, v0, v1}, Lcom/vungle/publisher/py;->a(J)V

    iget-object v2, p0, Lcom/vungle/publisher/afq$a;->d:Lcom/vungle/publisher/bt;

    new-instance v3, Lcom/vungle/publisher/afq$a$1;

    invoke-direct {v3, p0}, Lcom/vungle/publisher/afq$a$1;-><init>(Lcom/vungle/publisher/afq$a;)V

    sget-object v4, Lcom/vungle/publisher/bt$b;->u:Lcom/vungle/publisher/bt$b;

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/vungle/publisher/bt;->a(Ljava/lang/Runnable;Lcom/vungle/publisher/bt$b;J)V

    goto :goto_0
.end method
