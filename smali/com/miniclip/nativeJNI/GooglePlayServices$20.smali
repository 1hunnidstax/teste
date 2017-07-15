.class Lcom/miniclip/nativeJNI/GooglePlayServices$20;
.super Ljava/lang/Object;
.source "GooglePlayServices.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniclip/nativeJNI/GooglePlayServices;->GPM_showLeaderboards()V
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
    .line 1046
    iput-object p1, p0, Lcom/miniclip/nativeJNI/GooglePlayServices$20;->this$0:Lcom/miniclip/nativeJNI/GooglePlayServices;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1048
    # getter for: Lcom/miniclip/nativeJNI/GooglePlayServices;->mGooglePlayServices:Lcom/miniclip/nativeJNI/GooglePlayServices;
    invoke-static {}, Lcom/miniclip/nativeJNI/GooglePlayServices;->access$400()Lcom/miniclip/nativeJNI/GooglePlayServices;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1049
    # getter for: Lcom/miniclip/nativeJNI/GooglePlayServices;->mGooglePlayServices:Lcom/miniclip/nativeJNI/GooglePlayServices;
    invoke-static {}, Lcom/miniclip/nativeJNI/GooglePlayServices;->access$400()Lcom/miniclip/nativeJNI/GooglePlayServices;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miniclip/nativeJNI/GooglePlayServices;->showLeaderboards()V

    .line 1050
    :cond_0
    return-void
.end method
