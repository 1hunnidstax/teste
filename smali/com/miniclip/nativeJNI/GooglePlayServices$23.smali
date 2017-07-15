.class final Lcom/miniclip/nativeJNI/GooglePlayServices$23;
.super Ljava/lang/Object;
.source "GooglePlayServices.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniclip/nativeJNI/GooglePlayServices;->GPM_showAchievements()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1074
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1076
    # getter for: Lcom/miniclip/nativeJNI/GooglePlayServices;->mGooglePlayServices:Lcom/miniclip/nativeJNI/GooglePlayServices;
    invoke-static {}, Lcom/miniclip/nativeJNI/GooglePlayServices;->access$400()Lcom/miniclip/nativeJNI/GooglePlayServices;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1077
    # getter for: Lcom/miniclip/nativeJNI/GooglePlayServices;->mGooglePlayServices:Lcom/miniclip/nativeJNI/GooglePlayServices;
    invoke-static {}, Lcom/miniclip/nativeJNI/GooglePlayServices;->access$400()Lcom/miniclip/nativeJNI/GooglePlayServices;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miniclip/nativeJNI/GooglePlayServices;->showAchievements()V

    .line 1078
    :cond_0
    return-void
.end method
