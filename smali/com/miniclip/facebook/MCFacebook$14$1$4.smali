.class Lcom/miniclip/facebook/MCFacebook$14$1$4;
.super Ljava/lang/Object;
.source "MCFacebook.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniclip/facebook/MCFacebook$14$1;->onComplete(Landroid/os/Bundle;Lcom/facebook/FacebookException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miniclip/facebook/MCFacebook$14$1;


# direct methods
.method constructor <init>(Lcom/miniclip/facebook/MCFacebook$14$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miniclip/facebook/MCFacebook$14$1;

    .prologue
    .line 774
    iput-object p1, p0, Lcom/miniclip/facebook/MCFacebook$14$1$4;->this$1:Lcom/miniclip/facebook/MCFacebook$14$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 777
    const-string v0, "Error"

    invoke-static {v0, v1, v1}, Lcom/miniclip/facebook/MCFacebook;->MfacebookWebRequestFailed(Ljava/lang/String;II)V

    .line 778
    return-void
.end method
