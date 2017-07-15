.class Lcom/miniclip/nativeJNI/GooglePlayServices$2$1;
.super Ljava/lang/Object;
.source "GooglePlayServices.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniclip/nativeJNI/GooglePlayServices$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miniclip/nativeJNI/GooglePlayServices$2;


# direct methods
.method constructor <init>(Lcom/miniclip/nativeJNI/GooglePlayServices$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miniclip/nativeJNI/GooglePlayServices$2;

    .prologue
    .line 327
    iput-object p1, p0, Lcom/miniclip/nativeJNI/GooglePlayServices$2$1;->this$1:Lcom/miniclip/nativeJNI/GooglePlayServices$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 330
    # getter for: Lcom/miniclip/nativeJNI/GooglePlayServices;->mToken:Ljava/lang/String;
    invoke-static {}, Lcom/miniclip/nativeJNI/GooglePlayServices;->access$000()Ljava/lang/String;

    move-result-object v0

    # getter for: Lcom/miniclip/nativeJNI/GooglePlayServices;->mDelegate:I
    invoke-static {}, Lcom/miniclip/nativeJNI/GooglePlayServices;->access$200()I

    move-result v1

    invoke-static {v0, v1}, Lcom/miniclip/nativeJNI/GooglePlayServices;->MGooglePlusSignInCallbackOnSuccess(Ljava/lang/String;I)V

    .line 331
    return-void
.end method
