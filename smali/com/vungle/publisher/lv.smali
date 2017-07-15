.class public final Lcom/vungle/publisher/lv;
.super Landroid/content/BroadcastReceiver;
.source "vungle"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field public a:Landroid/content/Context;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field b:Lcom/vungle/publisher/ql;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 30
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 32
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 33
    iget-object v0, p0, Lcom/vungle/publisher/lv;->b:Lcom/vungle/publisher/ql;

    new-instance v1, Lcom/vungle/publisher/mf;

    invoke-direct {v1}, Lcom/vungle/publisher/mf;-><init>()V

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/ql;->a(Ljava/lang/Object;)V

    .line 37
    :cond_0
    :goto_0
    return-void

    .line 34
    :cond_1
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/vungle/publisher/lv;->b:Lcom/vungle/publisher/ql;

    new-instance v1, Lcom/vungle/publisher/mg;

    invoke-direct {v1}, Lcom/vungle/publisher/mg;-><init>()V

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/ql;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method
