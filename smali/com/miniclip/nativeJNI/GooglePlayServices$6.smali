.class Lcom/miniclip/nativeJNI/GooglePlayServices$6;
.super Ljava/lang/Object;
.source "GooglePlayServices.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniclip/nativeJNI/GooglePlayServices;->share(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
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
    .line 782
    iput-object p1, p0, Lcom/miniclip/nativeJNI/GooglePlayServices$6;->this$0:Lcom/miniclip/nativeJNI/GooglePlayServices;

    iput p2, p0, Lcom/miniclip/nativeJNI/GooglePlayServices$6;->val$delegate:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 785
    const/4 v0, 0x1

    iget v1, p0, Lcom/miniclip/nativeJNI/GooglePlayServices$6;->val$delegate:I

    invoke-static {v0, v1}, Lcom/miniclip/nativeJNI/GooglePlayServices;->MGooglePlusShareCallbackOnFailure(II)V

    .line 786
    return-void
.end method
