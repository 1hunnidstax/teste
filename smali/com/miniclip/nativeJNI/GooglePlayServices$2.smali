.class Lcom/miniclip/nativeJNI/GooglePlayServices$2;
.super Ljava/lang/Thread;
.source "GooglePlayServices.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniclip/nativeJNI/GooglePlayServices;->onConnected(Landroid/os/Bundle;)V
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
    .line 314
    iput-object p1, p0, Lcom/miniclip/nativeJNI/GooglePlayServices$2;->this$0:Lcom/miniclip/nativeJNI/GooglePlayServices;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 318
    :try_start_0
    const-string v1, "oauth2:https://www.googleapis.com/auth/plus.login profile https://www.googleapis.com/auth/userinfo.email"

    .line 322
    .local v1, "scope":Ljava/lang/String;
    # getter for: Lcom/miniclip/nativeJNI/GooglePlayServices;->mActivity:Lcom/miniclip/eightballpool/EightBallPoolGoogleBaseActivity;
    invoke-static {}, Lcom/miniclip/nativeJNI/GooglePlayServices;->access$100()Lcom/miniclip/eightballpool/EightBallPoolGoogleBaseActivity;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/plus/Plus;->AccountApi:Lcom/google/android/gms/plus/Account;

    sget-object v4, Lcom/miniclip/nativeJNI/GooglePlayServices;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 323
    invoke-interface {v3, v4}, Lcom/google/android/gms/plus/Account;->getAccountName(Lcom/google/android/gms/common/api/GoogleApiClient;)Ljava/lang/String;

    move-result-object v3

    .line 322
    invoke-static {v2, v3, v1}, Lcom/google/android/gms/auth/GoogleAuthUtil;->getToken(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    # setter for: Lcom/miniclip/nativeJNI/GooglePlayServices;->mToken:Ljava/lang/String;
    invoke-static {v2}, Lcom/miniclip/nativeJNI/GooglePlayServices;->access$002(Ljava/lang/String;)Ljava/lang/String;

    .line 325
    iget-object v2, p0, Lcom/miniclip/nativeJNI/GooglePlayServices$2;->this$0:Lcom/miniclip/nativeJNI/GooglePlayServices;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Connected with token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    # getter for: Lcom/miniclip/nativeJNI/GooglePlayServices;->mToken:Ljava/lang/String;
    invoke-static {}, Lcom/miniclip/nativeJNI/GooglePlayServices;->access$000()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miniclip/nativeJNI/GooglePlayServices;->debugLog(Ljava/lang/String;)V

    .line 327
    # getter for: Lcom/miniclip/nativeJNI/GooglePlayServices;->mActivity:Lcom/miniclip/eightballpool/EightBallPoolGoogleBaseActivity;
    invoke-static {}, Lcom/miniclip/nativeJNI/GooglePlayServices;->access$100()Lcom/miniclip/eightballpool/EightBallPoolGoogleBaseActivity;

    move-result-object v2

    sget-object v3, Lcom/miniclip/framework/ThreadingContext;->GlThread:Lcom/miniclip/framework/ThreadingContext;

    new-instance v4, Lcom/miniclip/nativeJNI/GooglePlayServices$2$1;

    invoke-direct {v4, p0}, Lcom/miniclip/nativeJNI/GooglePlayServices$2$1;-><init>(Lcom/miniclip/nativeJNI/GooglePlayServices$2;)V

    invoke-virtual {v2, v3, v4}, Lcom/miniclip/eightballpool/EightBallPoolGoogleBaseActivity;->queueEvent(Lcom/miniclip/framework/ThreadingContext;Ljava/lang/Runnable;)V

    .line 334
    iget-object v2, p0, Lcom/miniclip/nativeJNI/GooglePlayServices$2;->this$0:Lcom/miniclip/nativeJNI/GooglePlayServices;

    invoke-virtual {v2}, Lcom/miniclip/nativeJNI/GooglePlayServices;->loadVisiblePeople()V
    :try_end_0
    .catch Lcom/google/android/gms/auth/UserRecoverableAuthException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/gms/auth/GoogleAuthException; {:try_start_0 .. :try_end_0} :catch_2

    .line 347
    .end local v1    # "scope":Ljava/lang/String;
    :goto_0
    return-void

    .line 336
    :catch_0
    move-exception v0

    .line 337
    .local v0, "e":Lcom/google/android/gms/auth/UserRecoverableAuthException;
    # getter for: Lcom/miniclip/nativeJNI/GooglePlayServices;->mActivity:Lcom/miniclip/eightballpool/EightBallPoolGoogleBaseActivity;
    invoke-static {}, Lcom/miniclip/nativeJNI/GooglePlayServices;->access$100()Lcom/miniclip/eightballpool/EightBallPoolGoogleBaseActivity;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/auth/UserRecoverableAuthException;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const/16 v4, 0x2328

    invoke-virtual {v2, v3, v4}, Lcom/miniclip/eightballpool/EightBallPoolGoogleBaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 341
    invoke-virtual {v0}, Lcom/google/android/gms/auth/UserRecoverableAuthException;->printStackTrace()V

    goto :goto_0

    .line 342
    .end local v0    # "e":Lcom/google/android/gms/auth/UserRecoverableAuthException;
    :catch_1
    move-exception v0

    .line 343
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 344
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 345
    .local v0, "e":Lcom/google/android/gms/auth/GoogleAuthException;
    invoke-virtual {v0}, Lcom/google/android/gms/auth/GoogleAuthException;->printStackTrace()V

    goto :goto_0
.end method
