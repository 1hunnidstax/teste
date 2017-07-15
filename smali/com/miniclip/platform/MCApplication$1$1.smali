.class Lcom/miniclip/platform/MCApplication$1$1;
.super Ljava/lang/Object;
.source "MCApplication.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniclip/platform/MCApplication$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miniclip/platform/MCApplication$1;


# direct methods
.method constructor <init>(Lcom/miniclip/platform/MCApplication$1;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miniclip/platform/MCApplication$1;

    .prologue
    .line 327
    iput-object p1, p0, Lcom/miniclip/platform/MCApplication$1$1;->this$0:Lcom/miniclip/platform/MCApplication$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    const/4 v3, 0x0

    .line 329
    const-string v0, "MCApplication"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ask for permission: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miniclip/platform/MCApplication$1$1;->this$0:Lcom/miniclip/platform/MCApplication$1;

    iget-object v2, v2, Lcom/miniclip/platform/MCApplication$1;->val$permission:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    # getter for: Lcom/miniclip/platform/MCApplication;->MCActivity:Landroid/app/Activity;
    invoke-static {}, Lcom/miniclip/platform/MCApplication;->access$000()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/miniclip/platform/MCApplication$1$1;->this$0:Lcom/miniclip/platform/MCApplication$1;

    iget-object v2, v2, Lcom/miniclip/platform/MCApplication$1;->val$permission:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1, v3}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    .line 331
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 332
    return-void
.end method
