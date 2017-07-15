.class final Lcom/vungle/publisher/mz$1;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 33
    iput-object p1, p0, Lcom/vungle/publisher/mz$1;->b:Lcom/vungle/publisher/mz;

    iput-object p2, p0, Lcom/vungle/publisher/mz$1;->a:Lcom/vungle/publisher/mz$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 36
    const-string v0, "VungleAd"

    const-string v1, "positive click"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/vungle/publisher/mz$1;->a:Lcom/vungle/publisher/mz$a;

    invoke-interface {v0}, Lcom/vungle/publisher/mz$a;->a()V

    .line 38
    return-void
.end method
