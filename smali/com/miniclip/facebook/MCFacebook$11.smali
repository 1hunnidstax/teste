.class final Lcom/miniclip/facebook/MCFacebook$11;
.super Ljava/lang/Object;
.source "MCFacebook.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniclip/facebook/MCFacebook;->facebook_postOpenGraphImageWithPath(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field final synthetic val$delegate:I


# direct methods
.method constructor <init>(ILandroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 627
    iput p1, p0, Lcom/miniclip/facebook/MCFacebook$11;->val$delegate:I

    iput-object p2, p0, Lcom/miniclip/facebook/MCFacebook$11;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 630
    iget v2, p0, Lcom/miniclip/facebook/MCFacebook$11;->val$delegate:I

    invoke-static {v2}, Lcom/miniclip/facebook/MCFacebook;->facebookRequestCallback(I)Lcom/facebook/Request$Callback;

    move-result-object v0

    .line 632
    .local v0, "c":Lcom/facebook/Request$Callback;
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v2

    iget-object v3, p0, Lcom/miniclip/facebook/MCFacebook$11;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-static {v2, v3, v0}, Lcom/facebook/Request;->newUploadStagingResourceWithImageRequest(Lcom/facebook/Session;Landroid/graphics/Bitmap;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;

    move-result-object v1

    .line 633
    .local v1, "imageRequest":Lcom/facebook/Request;
    invoke-virtual {v1}, Lcom/facebook/Request;->executeAsync()Lcom/facebook/RequestAsyncTask;

    .line 634
    return-void
.end method
