.class Lcom/miniclip/nativeJNI/GooglePlayServices$5;
.super Ljava/lang/Object;
.source "GooglePlayServices.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniclip/nativeJNI/GooglePlayServices;->giveUp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miniclip/nativeJNI/GooglePlayServices;


# direct methods
.method constructor <init>(Lcom/miniclip/nativeJNI/GooglePlayServices;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miniclip/nativeJNI/GooglePlayServices;

    .prologue
    .line 504
    iput-object p1, p0, Lcom/miniclip/nativeJNI/GooglePlayServices$5;->this$0:Lcom/miniclip/nativeJNI/GooglePlayServices;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 507
    const/4 v0, 0x1

    .line 508
    .local v0, "errorCode":I
    iget-object v1, p0, Lcom/miniclip/nativeJNI/GooglePlayServices$5;->this$0:Lcom/miniclip/nativeJNI/GooglePlayServices;

    iget-object v1, v1, Lcom/miniclip/nativeJNI/GooglePlayServices;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v1, :cond_0

    .line 509
    iget-object v1, p0, Lcom/miniclip/nativeJNI/GooglePlayServices$5;->this$0:Lcom/miniclip/nativeJNI/GooglePlayServices;

    iget-object v1, v1, Lcom/miniclip/nativeJNI/GooglePlayServices;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v1}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v0

    .line 510
    :cond_0
    # getter for: Lcom/miniclip/nativeJNI/GooglePlayServices;->mDelegate:I
    invoke-static {}, Lcom/miniclip/nativeJNI/GooglePlayServices;->access$200()I

    move-result v1

    invoke-static {v0, v1}, Lcom/miniclip/nativeJNI/GooglePlayServices;->MGooglePlusSignInCallbackOnFailure(II)V

    .line 511
    return-void
.end method
