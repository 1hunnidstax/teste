.class Lcom/miniclip/nativeJNI/GooglePlayServices$18;
.super Ljava/lang/Object;
.source "GooglePlayServices.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniclip/nativeJNI/GooglePlayServices;->GPM_updateScore(Ljava/lang/String;JLjava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miniclip/nativeJNI/GooglePlayServices;

.field final synthetic val$leaderboardId:Ljava/lang/String;

.field final synthetic val$scoreValue:J

.field final synthetic val$userData:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/miniclip/nativeJNI/GooglePlayServices;Ljava/lang/String;JLjava/lang/Object;)V
    .locals 1
    .param p1, "this$0"    # Lcom/miniclip/nativeJNI/GooglePlayServices;

    .prologue
    .line 1028
    iput-object p1, p0, Lcom/miniclip/nativeJNI/GooglePlayServices$18;->this$0:Lcom/miniclip/nativeJNI/GooglePlayServices;

    iput-object p2, p0, Lcom/miniclip/nativeJNI/GooglePlayServices$18;->val$leaderboardId:Ljava/lang/String;

    iput-wide p3, p0, Lcom/miniclip/nativeJNI/GooglePlayServices$18;->val$scoreValue:J

    iput-object p5, p0, Lcom/miniclip/nativeJNI/GooglePlayServices$18;->val$userData:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1030
    # getter for: Lcom/miniclip/nativeJNI/GooglePlayServices;->mGooglePlayServices:Lcom/miniclip/nativeJNI/GooglePlayServices;
    invoke-static {}, Lcom/miniclip/nativeJNI/GooglePlayServices;->access$400()Lcom/miniclip/nativeJNI/GooglePlayServices;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1031
    # getter for: Lcom/miniclip/nativeJNI/GooglePlayServices;->mGooglePlayServices:Lcom/miniclip/nativeJNI/GooglePlayServices;
    invoke-static {}, Lcom/miniclip/nativeJNI/GooglePlayServices;->access$400()Lcom/miniclip/nativeJNI/GooglePlayServices;

    move-result-object v0

    iget-object v1, p0, Lcom/miniclip/nativeJNI/GooglePlayServices$18;->val$leaderboardId:Ljava/lang/String;

    iget-wide v2, p0, Lcom/miniclip/nativeJNI/GooglePlayServices$18;->val$scoreValue:J

    iget-object v4, p0, Lcom/miniclip/nativeJNI/GooglePlayServices$18;->val$userData:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/miniclip/nativeJNI/GooglePlayServices;->updateScore(Ljava/lang/String;JLjava/lang/Object;)V

    .line 1032
    :cond_0
    return-void
.end method
