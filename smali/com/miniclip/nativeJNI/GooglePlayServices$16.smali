.class Lcom/miniclip/nativeJNI/GooglePlayServices$16;
.super Ljava/lang/Object;
.source "GooglePlayServices.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniclip/nativeJNI/GooglePlayServices;->onShared()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miniclip/nativeJNI/GooglePlayServices;

.field final synthetic val$delegate:I


# direct methods
.method constructor <init>(Lcom/miniclip/nativeJNI/GooglePlayServices;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/miniclip/nativeJNI/GooglePlayServices;

    .prologue
    .line 1007
    iput-object p1, p0, Lcom/miniclip/nativeJNI/GooglePlayServices$16;->this$0:Lcom/miniclip/nativeJNI/GooglePlayServices;

    iput p2, p0, Lcom/miniclip/nativeJNI/GooglePlayServices$16;->val$delegate:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1010
    const-string v0, ""

    iget v1, p0, Lcom/miniclip/nativeJNI/GooglePlayServices$16;->val$delegate:I

    invoke-static {v0, v1}, Lcom/miniclip/nativeJNI/GooglePlayServices;->MGooglePlusShareCallbackOnSuccess(Ljava/lang/String;I)V

    .line 1011
    return-void
.end method
