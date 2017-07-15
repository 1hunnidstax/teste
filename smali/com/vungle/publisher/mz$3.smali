.class final Lcom/vungle/publisher/mz$3;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/publisher/mz;->a(Landroid/content/Context;Lcom/vungle/publisher/n;Lcom/vungle/publisher/mz$a;)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vungle/publisher/mz$a;

.field final synthetic b:Lcom/vungle/publisher/mz;


# direct methods
.method constructor <init>(Lcom/vungle/publisher/mz;Lcom/vungle/publisher/mz$a;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/vungle/publisher/mz$3;->b:Lcom/vungle/publisher/mz;

    iput-object p2, p0, Lcom/vungle/publisher/mz$3;->a:Lcom/vungle/publisher/mz$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 52
    const-string v0, "VungleAd"

    const-string v1, "cancel click"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/vungle/publisher/mz$3;->a:Lcom/vungle/publisher/mz$a;

    invoke-interface {v0}, Lcom/vungle/publisher/mz$a;->c()V

    .line 54
    return-void
.end method
