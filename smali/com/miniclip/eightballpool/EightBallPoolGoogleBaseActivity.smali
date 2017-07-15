.class public Lcom/miniclip/eightballpool/EightBallPoolGoogleBaseActivity;
.super Lcom/miniclip/eightballpool/EightBallPoolBaseActivity;
.source "EightBallPoolGoogleBaseActivity.java"

# interfaces
.implements Lcom/miniclip/nativeJNI/GooglePlayServices$GooglePlayServicesListener;


# instance fields
.field private TAG:Ljava/lang/String;

.field public gPlay:Lcom/miniclip/nativeJNI/GooglePlayServices;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/miniclip/eightballpool/EightBallPoolBaseActivity;-><init>()V

    .line 18
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miniclip/eightballpool/EightBallPoolGoogleBaseActivity;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected getFullAppURI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    const-string v0, "market://details?id=com.miniclip.eightballpool"

    return-object v0
.end method

.method protected getFullVersionGameImageId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    const-string v0, "buynow_v2"

    return-object v0
.end method

.method protected loadExternalModules()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 35
    sput-boolean v3, Lcom/miniclip/facebook/MCFacebook;->mFORCE_FB_WEB:Z

    .line 37
    invoke-static {p0}, Lcom/miniclip/mcuseracquisition/MCAdjustWrapper;->init(Landroid/app/Activity;)V

    .line 39
    invoke-virtual {p0}, Lcom/miniclip/eightballpool/EightBallPoolGoogleBaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 41
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {v0}, Lcom/miniclip/notifications/MCNotification;->init(Landroid/content/Intent;)V

    .line 42
    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/String;

    const-string v2, "1040273365599"

    aput-object v2, v1, v3

    .line 43
    .local v1, "senderIds":[Ljava/lang/String;
    invoke-static {v1}, Lcom/miniclip/notifications/MCNotification;->registerGCM([Ljava/lang/String;)V

    .line 45
    invoke-super {p0}, Lcom/miniclip/eightballpool/EightBallPoolBaseActivity;->loadExternalModules()V

    .line 46
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "responseCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 84
    invoke-super {p0, p1, p2, p3}, Lcom/miniclip/eightballpool/EightBallPoolBaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 85
    iget-object v0, p0, Lcom/miniclip/eightballpool/EightBallPoolGoogleBaseActivity;->gPlay:Lcom/miniclip/nativeJNI/GooglePlayServices;

    invoke-virtual {v0, p1, p2, p3}, Lcom/miniclip/nativeJNI/GooglePlayServices;->onActivityResult(IILandroid/content/Intent;)V

    .line 86
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/miniclip/eightballpool/EightBallPoolBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    new-instance v1, Lcom/miniclip/nativeJNI/GooglePlayServices;

    invoke-direct {v1, p0}, Lcom/miniclip/nativeJNI/GooglePlayServices;-><init>(Lcom/miniclip/eightballpool/EightBallPoolGoogleBaseActivity;)V

    iput-object v1, p0, Lcom/miniclip/eightballpool/EightBallPoolGoogleBaseActivity;->gPlay:Lcom/miniclip/nativeJNI/GooglePlayServices;

    .line 54
    iget-object v1, p0, Lcom/miniclip/eightballpool/EightBallPoolGoogleBaseActivity;->gPlay:Lcom/miniclip/nativeJNI/GooglePlayServices;

    invoke-virtual {v1, p0}, Lcom/miniclip/nativeJNI/GooglePlayServices;->setup(Lcom/miniclip/nativeJNI/GooglePlayServices$GooglePlayServicesListener;)V

    .line 56
    invoke-virtual {p0}, Lcom/miniclip/eightballpool/EightBallPoolGoogleBaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 57
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/miniclip/mcuseracquisition/MCAdjustWrapper;->trackDeepLink(Landroid/net/Uri;)V

    .line 59
    invoke-static {v0}, Lcom/miniclip/applinks/AppLinksHandler;->handle(Landroid/content/Intent;)V

    .line 60
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 64
    invoke-super {p0, p1}, Lcom/miniclip/eightballpool/EightBallPoolBaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 65
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/miniclip/mcuseracquisition/MCAdjustWrapper;->trackDeepLink(Landroid/net/Uri;)V

    .line 67
    invoke-static {p1}, Lcom/miniclip/applinks/AppLinksHandler;->handle(Landroid/content/Intent;)V

    .line 68
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 72
    invoke-super {p0}, Lcom/miniclip/eightballpool/EightBallPoolBaseActivity;->onPause()V

    .line 73
    invoke-static {}, Lcom/miniclip/mcuseracquisition/MCAdjustWrapper;->pauseAdjust()V

    .line 74
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 78
    invoke-super {p0}, Lcom/miniclip/eightballpool/EightBallPoolBaseActivity;->onResume()V

    .line 79
    invoke-static {}, Lcom/miniclip/mcuseracquisition/MCAdjustWrapper;->resumeAdjust()V

    .line 80
    return-void
.end method

.method public onSignInFailed()V
    .locals 2

    .prologue
    .line 93
    const-string v0, "GooglePlayServices"

    const-string v1, "onSignInFailed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    return-void
.end method

.method public onSignInSucceeded()V
    .locals 2

    .prologue
    .line 97
    const-string v0, "GooglePlayServices"

    const-string v1, "onSignInSucceeded"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    return-void
.end method
