.class Lcom/miniclip/platform/MCApplication$5$1;
.super Ljava/lang/Object;
.source "MCApplication.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniclip/platform/MCApplication$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miniclip/platform/MCApplication$5;


# direct methods
.method constructor <init>(Lcom/miniclip/platform/MCApplication$5;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miniclip/platform/MCApplication$5;

    .prologue
    .line 472
    iput-object p1, p0, Lcom/miniclip/platform/MCApplication$5$1;->this$1:Lcom/miniclip/platform/MCApplication$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 474
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 475
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 476
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 477
    const-string v2, "package"

    # getter for: Lcom/miniclip/platform/MCApplication;->MCActivity:Landroid/app/Activity;
    invoke-static {}, Lcom/miniclip/platform/MCApplication;->access$000()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 478
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 479
    # getter for: Lcom/miniclip/platform/MCApplication;->MCActivity:Landroid/app/Activity;
    invoke-static {}, Lcom/miniclip/platform/MCApplication;->access$000()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 480
    return-void
.end method
