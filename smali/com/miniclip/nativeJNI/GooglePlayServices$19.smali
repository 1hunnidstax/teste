.class Lcom/miniclip/nativeJNI/GooglePlayServices$19;
.super Ljava/lang/Object;
.source "GooglePlayServices.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniclip/nativeJNI/GooglePlayServices;->GPM_showLeaderboard(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miniclip/nativeJNI/GooglePlayServices;

.field final synthetic val$leaderboardId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miniclip/nativeJNI/GooglePlayServices;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miniclip/nativeJNI/GooglePlayServices;

    .prologue
    .line 1037
    iput-object p1, p0, Lcom/miniclip/nativeJNI/GooglePlayServices$19;->this$0:Lcom/miniclip/nativeJNI/GooglePlayServices;

    iput-object p2, p0, Lcom/miniclip/nativeJNI/GooglePlayServices$19;->val$leaderboardId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1039
    # getter for: Lcom/miniclip/nativeJNI/GooglePlayServices;->mGooglePlayServices:Lcom/miniclip/nativeJNI/GooglePlayServices;
    invoke-static {}, Lcom/miniclip/nativeJNI/GooglePlayServices;->access$400()Lcom/miniclip/nativeJNI/GooglePlayServices;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1040
    # getter for: Lcom/miniclip/nativeJNI/GooglePlayServices;->mGooglePlayServices:Lcom/miniclip/nativeJNI/GooglePlayServices;
    invoke-static {}, Lcom/miniclip/nativeJNI/GooglePlayServices;->access$400()Lcom/miniclip/nativeJNI/GooglePlayServices;

    move-result-object v0

    iget-object v1, p0, Lcom/miniclip/nativeJNI/GooglePlayServices$19;->val$leaderboardId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miniclip/nativeJNI/GooglePlayServices;->showLeaderboard(Ljava/lang/String;)V

    .line 1041
    :cond_0
    return-void
.end method
