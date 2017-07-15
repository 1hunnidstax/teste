.class final Lcom/miniclip/facebook/MCFacebook$16;
.super Ljava/lang/Object;
.source "MCFacebook.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniclip/facebook/MCFacebook;->faceBook_dialogWithLogin(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$action:Ljava/lang/String;

.field final synthetic val$params:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 905
    iput-object p1, p0, Lcom/miniclip/facebook/MCFacebook$16;->val$action:Ljava/lang/String;

    iput-object p2, p0, Lcom/miniclip/facebook/MCFacebook$16;->val$params:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 908
    invoke-static {}, Lcom/miniclip/facebook/MCFacebook;->facebookLoginSuccess()V

    .line 909
    iget-object v0, p0, Lcom/miniclip/facebook/MCFacebook$16;->val$action:Ljava/lang/String;

    iget-object v1, p0, Lcom/miniclip/facebook/MCFacebook$16;->val$params:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miniclip/facebook/MCFacebook;->faceBook_dialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 910
    return-void
.end method
