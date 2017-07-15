.class final Lcom/miniclip/nativeJNI/GooglePlayServices$22;
.super Ljava/lang/Object;
.source "GooglePlayServices.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniclip/nativeJNI/GooglePlayServices;->GPM_unlockAchievement(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$achievementId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1065
    iput-object p1, p0, Lcom/miniclip/nativeJNI/GooglePlayServices$22;->val$achievementId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1067
    # getter for: Lcom/miniclip/nativeJNI/GooglePlayServices;->mGooglePlayServices:Lcom/miniclip/nativeJNI/GooglePlayServices;
    invoke-static {}, Lcom/miniclip/nativeJNI/GooglePlayServices;->access$400()Lcom/miniclip/nativeJNI/GooglePlayServices;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1068
    # getter for: Lcom/miniclip/nativeJNI/GooglePlayServices;->mGooglePlayServices:Lcom/miniclip/nativeJNI/GooglePlayServices;
    invoke-static {}, Lcom/miniclip/nativeJNI/GooglePlayServices;->access$400()Lcom/miniclip/nativeJNI/GooglePlayServices;

    move-result-object v0

    iget-object v1, p0, Lcom/miniclip/nativeJNI/GooglePlayServices$22;->val$achievementId:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miniclip/nativeJNI/GooglePlayServices;->unlockAchievement(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1069
    :cond_0
    return-void
.end method
