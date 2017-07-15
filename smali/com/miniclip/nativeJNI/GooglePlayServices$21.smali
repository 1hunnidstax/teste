.class Lcom/miniclip/nativeJNI/GooglePlayServices$21;
.super Ljava/lang/Object;
.source "GooglePlayServices.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniclip/nativeJNI/GooglePlayServices;->GPM_updateAchievement(Ljava/lang/String;F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miniclip/nativeJNI/GooglePlayServices;

.field final synthetic val$achievementId:Ljava/lang/String;

.field final synthetic val$progressValue:F


# direct methods
.method constructor <init>(Lcom/miniclip/nativeJNI/GooglePlayServices;Ljava/lang/String;F)V
    .locals 0
    .param p1, "this$0"    # Lcom/miniclip/nativeJNI/GooglePlayServices;

    .prologue
    .line 1056
    iput-object p1, p0, Lcom/miniclip/nativeJNI/GooglePlayServices$21;->this$0:Lcom/miniclip/nativeJNI/GooglePlayServices;

    iput-object p2, p0, Lcom/miniclip/nativeJNI/GooglePlayServices$21;->val$achievementId:Ljava/lang/String;

    iput p3, p0, Lcom/miniclip/nativeJNI/GooglePlayServices$21;->val$progressValue:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1058
    # getter for: Lcom/miniclip/nativeJNI/GooglePlayServices;->mGooglePlayServices:Lcom/miniclip/nativeJNI/GooglePlayServices;
    invoke-static {}, Lcom/miniclip/nativeJNI/GooglePlayServices;->access$400()Lcom/miniclip/nativeJNI/GooglePlayServices;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1059
    # getter for: Lcom/miniclip/nativeJNI/GooglePlayServices;->mGooglePlayServices:Lcom/miniclip/nativeJNI/GooglePlayServices;
    invoke-static {}, Lcom/miniclip/nativeJNI/GooglePlayServices;->access$400()Lcom/miniclip/nativeJNI/GooglePlayServices;

    move-result-object v0

    iget-object v1, p0, Lcom/miniclip/nativeJNI/GooglePlayServices$21;->val$achievementId:Ljava/lang/String;

    iget v2, p0, Lcom/miniclip/nativeJNI/GooglePlayServices$21;->val$progressValue:F

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/miniclip/nativeJNI/GooglePlayServices;->updateAchievement(Ljava/lang/String;FLjava/lang/Object;)V

    .line 1060
    :cond_0
    return-void
.end method
