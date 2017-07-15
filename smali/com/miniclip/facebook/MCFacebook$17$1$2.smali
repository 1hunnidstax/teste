.class Lcom/miniclip/facebook/MCFacebook$17$1$2;
.super Ljava/lang/Object;
.source "MCFacebook.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniclip/facebook/MCFacebook$17$1;->onComplete(Landroid/os/Bundle;Lcom/facebook/FacebookException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miniclip/facebook/MCFacebook$17$1;


# direct methods
.method constructor <init>(Lcom/miniclip/facebook/MCFacebook$17$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miniclip/facebook/MCFacebook$17$1;

    .prologue
    .line 998
    iput-object p1, p0, Lcom/miniclip/facebook/MCFacebook$17$1$2;->this$1:Lcom/miniclip/facebook/MCFacebook$17$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 1001
    invoke-static {}, Lcom/miniclip/facebook/MCFacebook;->MfacebookShareCanceled()V

    .line 1002
    return-void
.end method
