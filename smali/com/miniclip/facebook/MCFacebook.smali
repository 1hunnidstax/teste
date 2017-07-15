.class public Lcom/miniclip/facebook/MCFacebook;
.super Ljava/lang/Object;
.source "MCFacebook.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miniclip/facebook/MCFacebook$QueueEvent;
    }
.end annotation


# static fields
.field private static likeViewOverlay:Landroid/view/View;

.field public static mContext:Landroid/app/Activity;

.field private static mFB_AuthenticationRequested:Z

.field private static mFB_Session:Lcom/facebook/Session;

.field public static mFORCE_FB_WEB:Z

.field public static mFacebookAPP_ID:Ljava/lang/String;

.field private static mFacebookHandler:Landroid/os/Handler;

.field public static mGLView:Lcom/miniclip/facebook/MCFacebook$QueueEvent;

.field private static mLikeView:Lcom/miniclip/facebook/MCLikeView;

.field private static mUIHelper:Lcom/facebook/UiLifecycleHelper;

.field public static mUSE_FACEBOOK:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 153
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/miniclip/facebook/MCFacebook;->mFacebookHandler:Landroid/os/Handler;

    .line 154
    sput-boolean v1, Lcom/miniclip/facebook/MCFacebook;->mFB_AuthenticationRequested:Z

    .line 157
    sput-object v2, Lcom/miniclip/facebook/MCFacebook;->mLikeView:Lcom/miniclip/facebook/MCLikeView;

    .line 158
    sput-object v2, Lcom/miniclip/facebook/MCFacebook;->likeViewOverlay:Landroid/view/View;

    .line 160
    sput-boolean v1, Lcom/miniclip/facebook/MCFacebook;->mFORCE_FB_WEB:Z

    .line 161
    sput-boolean v1, Lcom/miniclip/facebook/MCFacebook;->mUSE_FACEBOOK:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static FBLB_setAuxiliaryPosition(I)V
    .locals 2
    .param p0, "likeControlAuxiliaryPosition"    # I

    .prologue
    .line 1294
    sget-object v0, Lcom/miniclip/facebook/MCFacebook;->mContext:Landroid/app/Activity;

    new-instance v1, Lcom/miniclip/facebook/MCFacebook$22;

    invoke-direct {v1, p0}, Lcom/miniclip/facebook/MCFacebook$22;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1316
    return-void
.end method

.method public static FBLB_setForegroundColor(I)V
    .locals 2
    .param p0, "foregroundColor"    # I

    .prologue
    .line 1320
    sget-object v0, Lcom/miniclip/facebook/MCFacebook;->mContext:Landroid/app/Activity;

    new-instance v1, Lcom/miniclip/facebook/MCFacebook$23;

    invoke-direct {v1, p0}, Lcom/miniclip/facebook/MCFacebook$23;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1331
    return-void
.end method

.method public static FBLB_setHeight(FF)V
    .locals 2
    .param p0, "height"    # F
    .param p1, "virtualScreenHeight"    # F

    .prologue
    .line 1384
    sget-object v0, Lcom/miniclip/facebook/MCFacebook;->mContext:Landroid/app/Activity;

    new-instance v1, Lcom/miniclip/facebook/MCFacebook$27;

    invoke-direct {v1, p0, p1}, Lcom/miniclip/facebook/MCFacebook$27;-><init>(FF)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1393
    return-void
.end method

.method public static FBLB_setHorizontalAlignment(I)V
    .locals 2
    .param p0, "likeControlHorizontalAlignment"    # I

    .prologue
    .line 1268
    sget-object v0, Lcom/miniclip/facebook/MCFacebook;->mContext:Landroid/app/Activity;

    new-instance v1, Lcom/miniclip/facebook/MCFacebook$21;

    invoke-direct {v1, p0}, Lcom/miniclip/facebook/MCFacebook$21;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1290
    return-void
.end method

.method public static FBLB_setObjectId(Ljava/lang/String;)V
    .locals 2
    .param p0, "objectId"    # Ljava/lang/String;

    .prologue
    .line 1255
    sget-object v0, Lcom/miniclip/facebook/MCFacebook;->mContext:Landroid/app/Activity;

    new-instance v1, Lcom/miniclip/facebook/MCFacebook$20;

    invoke-direct {v1, p0}, Lcom/miniclip/facebook/MCFacebook$20;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1264
    return-void
.end method

.method public static FBLB_setOpacity(F)V
    .locals 2
    .param p0, "opacity"    # F

    .prologue
    .line 1370
    sget-object v0, Lcom/miniclip/facebook/MCFacebook;->mContext:Landroid/app/Activity;

    new-instance v1, Lcom/miniclip/facebook/MCFacebook$26;

    invoke-direct {v1, p0}, Lcom/miniclip/facebook/MCFacebook$26;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1381
    return-void
.end method

.method public static FBLB_setPosition(FFF)V
    .locals 2
    .param p0, "x"    # F
    .param p1, "y"    # F
    .param p2, "virtualScreenHeight"    # F

    .prologue
    .line 1335
    sget-object v0, Lcom/miniclip/facebook/MCFacebook;->mContext:Landroid/app/Activity;

    new-instance v1, Lcom/miniclip/facebook/MCFacebook$24;

    invoke-direct {v1, p0, p1, p2}, Lcom/miniclip/facebook/MCFacebook$24;-><init>(FFF)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1344
    return-void
.end method

.method public static FBLB_setStyle(I)V
    .locals 2
    .param p0, "likeControlStyle"    # I

    .prologue
    .line 1229
    sget-object v0, Lcom/miniclip/facebook/MCFacebook;->mContext:Landroid/app/Activity;

    new-instance v1, Lcom/miniclip/facebook/MCFacebook$19;

    invoke-direct {v1, p0}, Lcom/miniclip/facebook/MCFacebook$19;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1251
    return-void
.end method

.method public static FBLB_setVisible(Z)V
    .locals 2
    .param p0, "visible"    # Z

    .prologue
    .line 1348
    sget-object v0, Lcom/miniclip/facebook/MCFacebook;->mContext:Landroid/app/Activity;

    new-instance v1, Lcom/miniclip/facebook/MCFacebook$25;

    invoke-direct {v1, p0}, Lcom/miniclip/facebook/MCFacebook$25;-><init>(Z)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1366
    return-void
.end method

.method public static FBLB_update(Ljava/lang/String;IIII)V
    .locals 7
    .param p0, "objectId"    # Ljava/lang/String;
    .param p1, "likeControlStyle"    # I
    .param p2, "foregroundColor"    # I
    .param p3, "likeControlHorizontalAlignment"    # I
    .param p4, "likeControlAuxiliaryPosition"    # I

    .prologue
    .line 1397
    sget-object v6, Lcom/miniclip/facebook/MCFacebook;->mContext:Landroid/app/Activity;

    new-instance v0, Lcom/miniclip/facebook/MCFacebook$28;

    move-object v1, p0

    move v2, p1

    move v3, p3

    move v4, p4

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/miniclip/facebook/MCFacebook$28;-><init>(Ljava/lang/String;IIII)V

    invoke-virtual {v6, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1426
    return-void
.end method

.method public static native MfacebookLikeButtonPressed()V
.end method

.method public static native MfacebookLikeComplete()V
.end method

.method public static native MfacebookLoginComplete()V
.end method

.method public static native MfacebookLoginFailed(Ljava/lang/String;II)V
.end method

.method public static native MfacebookRequestComplete(II[B)V
.end method

.method public static native MfacebookRequestFailed(Ljava/lang/String;III)V
.end method

.method public static native MfacebookShareCanceled()V
.end method

.method public static native MfacebookShareComplete()V
.end method

.method public static native MfacebookWebRequestComplete(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static native MfacebookWebRequestFailed(Ljava/lang/String;II)V
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 139
    sget-boolean v0, Lcom/miniclip/facebook/MCFacebook;->mFB_AuthenticationRequested:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 139
    sput-boolean p0, Lcom/miniclip/facebook/MCFacebook;->mFB_AuthenticationRequested:Z

    return p0
.end method

.method static synthetic access$100()Lcom/facebook/Session;
    .locals 1

    .prologue
    .line 139
    sget-object v0, Lcom/miniclip/facebook/MCFacebook;->mFB_Session:Lcom/facebook/Session;

    return-object v0
.end method

.method static synthetic access$200()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 139
    sget-object v0, Lcom/miniclip/facebook/MCFacebook;->mFacebookHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300()Lcom/miniclip/facebook/MCLikeView;
    .locals 1

    .prologue
    .line 139
    sget-object v0, Lcom/miniclip/facebook/MCFacebook;->mLikeView:Lcom/miniclip/facebook/MCLikeView;

    return-object v0
.end method

.method static synthetic access$302(Lcom/miniclip/facebook/MCLikeView;)Lcom/miniclip/facebook/MCLikeView;
    .locals 0
    .param p0, "x0"    # Lcom/miniclip/facebook/MCLikeView;

    .prologue
    .line 139
    sput-object p0, Lcom/miniclip/facebook/MCFacebook;->mLikeView:Lcom/miniclip/facebook/MCLikeView;

    return-object p0
.end method

.method static synthetic access$400()Landroid/view/View;
    .locals 1

    .prologue
    .line 139
    sget-object v0, Lcom/miniclip/facebook/MCFacebook;->likeViewOverlay:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$402(Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Landroid/view/View;

    .prologue
    .line 139
    sput-object p0, Lcom/miniclip/facebook/MCFacebook;->likeViewOverlay:Landroid/view/View;

    return-object p0
.end method

.method public static deleteRequest(Ljava/lang/String;I)V
    .locals 2
    .param p0, "requestId"    # Ljava/lang/String;
    .param p1, "delegate"    # I

    .prologue
    .line 862
    sget-boolean v0, Lcom/miniclip/facebook/MCFacebook;->mUSE_FACEBOOK:Z

    if-nez v0, :cond_0

    .line 871
    :goto_0
    return-void

    .line 866
    :cond_0
    sget-object v0, Lcom/miniclip/facebook/MCFacebook;->mContext:Landroid/app/Activity;

    new-instance v1, Lcom/miniclip/facebook/MCFacebook$15;

    invoke-direct {v1, p0, p1}, Lcom/miniclip/facebook/MCFacebook$15;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static faceBook_authorize(Ljava/lang/String;)V
    .locals 1
    .param p0, "permissions"    # Ljava/lang/String;

    .prologue
    .line 262
    new-instance v0, Lcom/miniclip/facebook/MCFacebook$3;

    invoke-direct {v0}, Lcom/miniclip/facebook/MCFacebook$3;-><init>()V

    invoke-static {p0, v0}, Lcom/miniclip/facebook/MCFacebook;->faceBook_authorizeAndRun(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 268
    return-void
.end method

.method public static faceBook_authorizeAndRun(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 8
    .param p0, "permissions"    # Ljava/lang/String;
    .param p1, "runAfterLogin"    # Ljava/lang/Runnable;

    .prologue
    const/4 v7, 0x0

    .line 272
    sget-boolean v5, Lcom/miniclip/facebook/MCFacebook;->mUSE_FACEBOOK:Z

    if-nez v5, :cond_0

    .line 387
    :goto_0
    return-void

    .line 277
    :cond_0
    const/4 v5, 0x1

    sput-boolean v5, Lcom/miniclip/facebook/MCFacebook;->mFB_AuthenticationRequested:Z

    .line 279
    sget-object v5, Lcom/miniclip/facebook/MCFacebook;->mFacebookAPP_ID:Ljava/lang/String;

    if-eqz v5, :cond_1

    sget-object v5, Lcom/miniclip/facebook/MCFacebook;->mFacebookAPP_ID:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 280
    :cond_1
    new-instance v5, Lcom/facebook/Session;

    sget-object v6, Lcom/miniclip/facebook/MCFacebook;->mContext:Landroid/app/Activity;

    invoke-direct {v5, v6}, Lcom/facebook/Session;-><init>(Landroid/content/Context;)V

    sput-object v5, Lcom/miniclip/facebook/MCFacebook;->mFB_Session:Lcom/facebook/Session;

    .line 287
    :goto_1
    sget-object v5, Lcom/miniclip/facebook/MCFacebook;->mContext:Landroid/app/Activity;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 288
    .local v3, "mPrefs":Landroid/content/SharedPreferences;
    const-string v5, "access_token"

    invoke-interface {v3, v5, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 290
    .local v1, "access_token":Ljava/lang/String;
    if-nez v1, :cond_3

    .line 293
    const-string v5, ","

    invoke-virtual {p0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 296
    .local v4, "permissionsArray":[Ljava/lang/String;
    sget-object v5, Lcom/miniclip/facebook/MCFacebook;->mContext:Landroid/app/Activity;

    new-instance v6, Lcom/miniclip/facebook/MCFacebook$4;

    invoke-direct {v6, p1, v4}, Lcom/miniclip/facebook/MCFacebook$4;-><init>(Ljava/lang/Runnable;[Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 283
    .end local v1    # "access_token":Ljava/lang/String;
    .end local v3    # "mPrefs":Landroid/content/SharedPreferences;
    .end local v4    # "permissionsArray":[Ljava/lang/String;
    :cond_2
    new-instance v5, Lcom/facebook/Session$Builder;

    sget-object v6, Lcom/miniclip/facebook/MCFacebook;->mContext:Landroid/app/Activity;

    invoke-direct {v5, v6}, Lcom/facebook/Session$Builder;-><init>(Landroid/content/Context;)V

    sget-object v6, Lcom/miniclip/facebook/MCFacebook;->mFacebookAPP_ID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/facebook/Session$Builder;->setApplicationId(Ljava/lang/String;)Lcom/facebook/Session$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/facebook/Session$Builder;->build()Lcom/facebook/Session;

    move-result-object v5

    sput-object v5, Lcom/miniclip/facebook/MCFacebook;->mFB_Session:Lcom/facebook/Session;

    goto :goto_1

    .line 365
    .restart local v1    # "access_token":Ljava/lang/String;
    .restart local v3    # "mPrefs":Landroid/content/SharedPreferences;
    :cond_3
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 366
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v5, "access_token"

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 367
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 371
    invoke-static {v1, v7, v7, v7, v7}, Lcom/facebook/AccessToken;->createFromExistingAccessToken(Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Lcom/facebook/AccessTokenSource;Ljava/util/List;)Lcom/facebook/AccessToken;

    move-result-object v0

    .line 374
    .local v0, "accessToken":Lcom/facebook/AccessToken;
    sget-object v5, Lcom/miniclip/facebook/MCFacebook;->mContext:Landroid/app/Activity;

    new-instance v6, Lcom/miniclip/facebook/MCFacebook$5;

    invoke-direct {v6, v0, p1}, Lcom/miniclip/facebook/MCFacebook$5;-><init>(Lcom/facebook/AccessToken;Ljava/lang/Runnable;)V

    invoke-virtual {v5, v6}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static faceBook_declinedPermissions()Ljava/lang/String;
    .locals 2

    .prologue
    .line 886
    sget-boolean v0, Lcom/miniclip/facebook/MCFacebook;->mUSE_FACEBOOK:Z

    if-nez v0, :cond_0

    .line 887
    const/4 v0, 0x0

    .line 888
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ","

    sget-object v1, Lcom/miniclip/facebook/MCFacebook;->mFB_Session:Lcom/facebook/Session;

    invoke-virtual {v1}, Lcom/facebook/Session;->getDeclinedPermissions()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static faceBook_dialog(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p0, "action"    # Ljava/lang/String;
    .param p1, "parBundle"    # Landroid/os/Bundle;

    .prologue
    .line 953
    sget-object v0, Lcom/miniclip/facebook/MCFacebook;->mContext:Landroid/app/Activity;

    new-instance v1, Lcom/miniclip/facebook/MCFacebook$17;

    invoke-direct {v1, p1}, Lcom/miniclip/facebook/MCFacebook$17;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1013
    return-void
.end method

.method public static faceBook_dialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "action"    # Ljava/lang/String;
    .param p1, "params"    # Ljava/lang/String;

    .prologue
    .line 934
    sget-boolean v3, Lcom/miniclip/facebook/MCFacebook;->mUSE_FACEBOOK:Z

    if-nez v3, :cond_0

    .line 949
    :goto_0
    return-void

    .line 937
    :cond_0
    const-string v3, "FACEBOOK"

    const-string v4, "faceBook_dialog"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 941
    .local v2, "parBundle":Landroid/os/Bundle;
    const-string v3, "#"

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 943
    .local v1, "individualItems":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v3, v1

    div-int/lit8 v3, v3, 0x2

    if-ge v0, v3, :cond_1

    .line 944
    mul-int/lit8 v3, v0, 0x2

    aget-object v3, v1, v3

    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x1

    aget-object v4, v1, v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 943
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 948
    :cond_1
    invoke-static {p0, v2}, Lcom/miniclip/facebook/MCFacebook;->faceBook_dialog(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public static faceBook_dialog(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 5
    .param p0, "action"    # Ljava/lang/String;
    .param p1, "keysArray"    # [Ljava/lang/String;
    .param p2, "objectsArray"    # [Ljava/lang/String;

    .prologue
    .line 916
    sget-boolean v2, Lcom/miniclip/facebook/MCFacebook;->mUSE_FACEBOOK:Z

    if-nez v2, :cond_0

    .line 930
    :goto_0
    return-void

    .line 919
    :cond_0
    const-string v2, "FACEBOOK"

    const-string v3, "faceBook_dialog_withArrays"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 923
    .local v1, "parBundle":Landroid/os/Bundle;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 925
    const-string v2, "FACEBOOK"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Paring key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p1, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with object: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p2, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    aget-object v2, p1, v0

    aget-object v3, p2, v0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 923
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 929
    :cond_1
    invoke-static {p0, v1}, Lcom/miniclip/facebook/MCFacebook;->faceBook_dialog(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public static faceBook_dialogWithLogin(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "action"    # Ljava/lang/String;
    .param p1, "params"    # Ljava/lang/String;

    .prologue
    .line 905
    const-string v0, "email,user_birthday"

    new-instance v1, Lcom/miniclip/facebook/MCFacebook$16;

    invoke-direct {v1, p0, p1}, Lcom/miniclip/facebook/MCFacebook$16;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/miniclip/facebook/MCFacebook;->faceBook_authorizeAndRun(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 912
    return-void
.end method

.method public static faceBook_getAccessToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 228
    sget-boolean v0, Lcom/miniclip/facebook/MCFacebook;->mUSE_FACEBOOK:Z

    if-nez v0, :cond_0

    .line 229
    const-string v0, ""

    .line 231
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/miniclip/facebook/MCFacebook;->mFB_Session:Lcom/facebook/Session;

    invoke-virtual {v0}, Lcom/facebook/Session;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static faceBook_hasPermission(Ljava/lang/String;)I
    .locals 2
    .param p0, "permission"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 875
    sget-boolean v1, Lcom/miniclip/facebook/MCFacebook;->mUSE_FACEBOOK:Z

    if-nez v1, :cond_1

    .line 881
    :cond_0
    :goto_0
    return v0

    .line 878
    :cond_1
    sget-object v1, Lcom/miniclip/facebook/MCFacebook;->mFB_Session:Lcom/facebook/Session;

    invoke-virtual {v1, p0}, Lcom/facebook/Session;->isPermissionGranted(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 879
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static faceBook_invite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "friendsIds"    # Ljava/lang/String;

    .prologue
    .line 829
    sget-boolean v1, Lcom/miniclip/facebook/MCFacebook;->mUSE_FACEBOOK:Z

    if-nez v1, :cond_0

    .line 841
    :goto_0
    return-void

    .line 833
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 834
    .local v0, "params":Landroid/os/Bundle;
    const-string v1, "message"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 835
    const-string v1, "data"

    const-string v2, "invite"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 836
    const-string v1, "title"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 837
    const-string v1, "to"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 838
    const-string v1, "frictionless"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 840
    invoke-static {v0}, Lcom/miniclip/facebook/MCFacebook;->facebook_showRequestDialog(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public static faceBook_isSessionValid()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 220
    sget-boolean v1, Lcom/miniclip/facebook/MCFacebook;->mUSE_FACEBOOK:Z

    if-nez v1, :cond_1

    .line 223
    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/miniclip/facebook/MCFacebook;->mFB_Session:Lcom/facebook/Session;

    invoke-virtual {v1}, Lcom/facebook/Session;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static faceBook_logout()V
    .locals 1

    .prologue
    .line 236
    sget-boolean v0, Lcom/miniclip/facebook/MCFacebook;->mUSE_FACEBOOK:Z

    if-nez v0, :cond_0

    .line 241
    :goto_0
    return-void

    .line 239
    :cond_0
    sget-object v0, Lcom/miniclip/facebook/MCFacebook;->mFB_Session:Lcom/facebook/Session;

    invoke-virtual {v0}, Lcom/facebook/Session;->closeAndClearTokenInformation()V

    .line 240
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/facebook/Session;->setActiveSession(Lcom/facebook/Session;)V

    goto :goto_0
.end method

.method public static faceBook_permissions()Ljava/lang/String;
    .locals 2

    .prologue
    .line 893
    sget-boolean v0, Lcom/miniclip/facebook/MCFacebook;->mUSE_FACEBOOK:Z

    if-nez v0, :cond_0

    .line 894
    const/4 v0, 0x0

    .line 895
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ","

    sget-object v1, Lcom/miniclip/facebook/MCFacebook;->mFB_Session:Lcom/facebook/Session;

    invoke-virtual {v1}, Lcom/facebook/Session;->getPermissions()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static faceBook_reauthorizeWithPublishPermissions(Ljava/lang/String;)V
    .locals 3
    .param p0, "permissions"    # Ljava/lang/String;

    .prologue
    .line 391
    sget-boolean v1, Lcom/miniclip/facebook/MCFacebook;->mUSE_FACEBOOK:Z

    if-nez v1, :cond_0

    .line 433
    :goto_0
    return-void

    .line 393
    :cond_0
    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 395
    .local v0, "permissionsArray":[Ljava/lang/String;
    sget-object v1, Lcom/miniclip/facebook/MCFacebook;->mContext:Landroid/app/Activity;

    new-instance v2, Lcom/miniclip/facebook/MCFacebook$6;

    invoke-direct {v2, v0}, Lcom/miniclip/facebook/MCFacebook$6;-><init>([Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static faceBook_refreshPermissions()V
    .locals 1

    .prologue
    .line 900
    sget-boolean v0, Lcom/miniclip/facebook/MCFacebook;->mUSE_FACEBOOK:Z

    if-eqz v0, :cond_0

    .line 901
    sget-object v0, Lcom/miniclip/facebook/MCFacebook;->mFB_Session:Lcom/facebook/Session;

    invoke-virtual {v0}, Lcom/facebook/Session;->refreshPermissions()V

    .line 902
    :cond_0
    return-void
.end method

.method public static faceBook_request(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p0, "graphPath"    # Ljava/lang/String;
    .param p1, "objParams"    # Ljava/lang/String;
    .param p2, "object"    # I

    .prologue
    .line 555
    sget-boolean v0, Lcom/miniclip/facebook/MCFacebook;->mUSE_FACEBOOK:Z

    if-nez v0, :cond_0

    .line 591
    :goto_0
    return-void

    .line 557
    :cond_0
    sget-object v0, Lcom/miniclip/facebook/MCFacebook;->mContext:Landroid/app/Activity;

    new-instance v1, Lcom/miniclip/facebook/MCFacebook$9;

    invoke-direct {v1, p1, p0, p2}, Lcom/miniclip/facebook/MCFacebook$9;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static faceBook_requestFields(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p0, "graphPath"    # Ljava/lang/String;
    .param p1, "fields"    # Ljava/lang/String;
    .param p2, "object"    # I

    .prologue
    .line 1017
    sget-boolean v0, Lcom/miniclip/facebook/MCFacebook;->mUSE_FACEBOOK:Z

    if-nez v0, :cond_0

    .line 1026
    :goto_0
    return-void

    .line 1019
    :cond_0
    sget-object v0, Lcom/miniclip/facebook/MCFacebook;->mContext:Landroid/app/Activity;

    new-instance v1, Lcom/miniclip/facebook/MCFacebook$18;

    invoke-direct {v1, p1, p0, p2}, Lcom/miniclip/facebook/MCFacebook$18;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static faceBook_requestNewReadPermissions(Ljava/lang/String;)V
    .locals 3
    .param p0, "permissions"    # Ljava/lang/String;

    .prologue
    .line 489
    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 491
    .local v0, "permissionsArray":[Ljava/lang/String;
    sget-object v1, Lcom/miniclip/facebook/MCFacebook;->mContext:Landroid/app/Activity;

    new-instance v2, Lcom/miniclip/facebook/MCFacebook$8;

    invoke-direct {v2, v0}, Lcom/miniclip/facebook/MCFacebook$8;-><init>([Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 540
    return-void
.end method

.method public static faceBook_setAppId(Ljava/lang/String;)V
    .locals 1
    .param p0, "appId"    # Ljava/lang/String;

    .prologue
    .line 256
    sput-object p0, Lcom/miniclip/facebook/MCFacebook;->mFacebookAPP_ID:Ljava/lang/String;

    .line 257
    sget-object v0, Lcom/miniclip/facebook/MCFacebook;->mFacebookAPP_ID:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/Settings;->setApplicationId(Ljava/lang/String;)V

    .line 258
    return-void
.end method

.method public static facebookLoginSuccess()V
    .locals 2

    .prologue
    .line 245
    sget-object v0, Lcom/miniclip/facebook/MCFacebook;->mGLView:Lcom/miniclip/facebook/MCFacebook$QueueEvent;

    new-instance v1, Lcom/miniclip/facebook/MCFacebook$2;

    invoke-direct {v1}, Lcom/miniclip/facebook/MCFacebook$2;-><init>()V

    invoke-interface {v0, v1}, Lcom/miniclip/facebook/MCFacebook$QueueEvent;->queueEvent(Ljava/lang/Runnable;)V

    .line 252
    return-void
.end method

.method public static facebookRequestCallback(I)Lcom/facebook/Request$Callback;
    .locals 1
    .param p0, "delegate"    # I

    .prologue
    .line 436
    new-instance v0, Lcom/miniclip/facebook/MCFacebook$7;

    invoke-direct {v0, p0}, Lcom/miniclip/facebook/MCFacebook$7;-><init>(I)V

    return-object v0
.end method

.method public static facebookRequestHelper(Lcom/facebook/HttpMethod;Ljava/lang/String;Landroid/os/Bundle;I)V
    .locals 6
    .param p0, "httpMethod"    # Lcom/facebook/HttpMethod;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "params"    # Landroid/os/Bundle;
    .param p3, "delegate"    # I

    .prologue
    .line 543
    const-string v1, "FACEBOOK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "facebookRequestHelper "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    invoke-static {p3}, Lcom/miniclip/facebook/MCFacebook;->facebookRequestCallback(I)Lcom/facebook/Request$Callback;

    move-result-object v5

    .line 547
    .local v5, "c":Lcom/facebook/Request$Callback;
    new-instance v0, Lcom/facebook/Request;

    sget-object v1, Lcom/miniclip/facebook/MCFacebook;->mFB_Session:Lcom/facebook/Session;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V

    .line 549
    .local v0, "r":Lcom/facebook/Request;
    invoke-virtual {v0}, Lcom/facebook/Request;->executeAsync()Lcom/facebook/RequestAsyncTask;

    .line 550
    return-void
.end method

.method public static facebook_askForGift(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "friendsIds"    # Ljava/lang/String;
    .param p3, "objectId"    # Ljava/lang/String;

    .prologue
    .line 793
    sget-boolean v1, Lcom/miniclip/facebook/MCFacebook;->mUSE_FACEBOOK:Z

    if-nez v1, :cond_0

    .line 807
    :goto_0
    return-void

    .line 797
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 798
    .local v0, "params":Landroid/os/Bundle;
    const-string v1, "message"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 799
    const-string v1, "title"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    const-string v1, "to"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 801
    const-string v1, "object_id"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 802
    const-string v1, "action_type"

    const-string v2, "askfor"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 803
    const-string v1, "frictionless"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 804
    const-string v1, "data"

    const-string v2, "gift_request"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 806
    invoke-static {v0}, Lcom/miniclip/facebook/MCFacebook;->facebook_showRequestDialog(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public static facebook_customRequest([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4
    .param p0, "keys"    # [Ljava/lang/String;
    .param p1, "values"    # [Ljava/lang/String;

    .prologue
    .line 845
    sget-boolean v2, Lcom/miniclip/facebook/MCFacebook;->mUSE_FACEBOOK:Z

    if-nez v2, :cond_0

    .line 859
    :goto_0
    return-void

    .line 849
    :cond_0
    array-length v2, p0

    array-length v3, p1

    if-eq v2, v3, :cond_1

    .line 850
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The keys must have the same number of elements as the values"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 853
    :cond_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 854
    .local v1, "params":Landroid/os/Bundle;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 855
    aget-object v2, p0, v0

    aget-object v3, p1, v0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 854
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 858
    :cond_2
    invoke-static {v1}, Lcom/miniclip/facebook/MCFacebook;->facebook_showRequestDialog(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public static facebook_postOpenGraphAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p0, "objId"    # Ljava/lang/String;
    .param p1, "objKey"    # Ljava/lang/String;
    .param p2, "actionPath"    # Ljava/lang/String;
    .param p3, "delegate"    # I

    .prologue
    .line 705
    sget-boolean v0, Lcom/miniclip/facebook/MCFacebook;->mUSE_FACEBOOK:Z

    if-nez v0, :cond_0

    .line 718
    :goto_0
    return-void

    .line 707
    :cond_0
    sget-object v0, Lcom/miniclip/facebook/MCFacebook;->mContext:Landroid/app/Activity;

    new-instance v1, Lcom/miniclip/facebook/MCFacebook$13;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/miniclip/facebook/MCFacebook$13;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static facebook_postOpenGraphImage(Ljava/lang/String;I[BII)V
    .locals 4
    .param p0, "objParams"    # Ljava/lang/String;
    .param p1, "delegate"    # I
    .param p2, "imageData"    # [B
    .param p3, "imageWidth"    # I
    .param p4, "imageHeight"    # I

    .prologue
    .line 595
    const-string v1, "FACEBOOK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "facebook_postOpenGraphImage params: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " delegate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " imageWidth: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " imageHeight: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p3, p4, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 597
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 607
    sget-boolean v1, Lcom/miniclip/facebook/MCFacebook;->mUSE_FACEBOOK:Z

    if-nez v1, :cond_0

    .line 618
    :goto_0
    return-void

    .line 609
    :cond_0
    sget-object v1, Lcom/miniclip/facebook/MCFacebook;->mContext:Landroid/app/Activity;

    new-instance v2, Lcom/miniclip/facebook/MCFacebook$10;

    invoke-direct {v2, p1, v0}, Lcom/miniclip/facebook/MCFacebook$10;-><init>(ILandroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static facebook_postOpenGraphImageWithPath(Ljava/lang/String;I)V
    .locals 4
    .param p0, "imagePath"    # Ljava/lang/String;
    .param p1, "delegate"    # I

    .prologue
    .line 622
    const-string v1, "FACEBOOK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "facebook_postOpenGraphImageWithPath: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " delegate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 625
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    sget-boolean v1, Lcom/miniclip/facebook/MCFacebook;->mUSE_FACEBOOK:Z

    if-nez v1, :cond_0

    .line 636
    :goto_0
    return-void

    .line 627
    :cond_0
    sget-object v1, Lcom/miniclip/facebook/MCFacebook;->mContext:Landroid/app/Activity;

    new-instance v2, Lcom/miniclip/facebook/MCFacebook$11;

    invoke-direct {v2, p1, v0}, Lcom/miniclip/facebook/MCFacebook$11;-><init>(ILandroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static facebook_postOpenGraphObject(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p0, "objParams"    # Ljava/lang/String;
    .param p1, "objPath"    # Ljava/lang/String;
    .param p2, "delegate"    # I

    .prologue
    .line 640
    const-string v0, "FACEBOOK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "facebook_postOpenGraphObject "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    sget-boolean v0, Lcom/miniclip/facebook/MCFacebook;->mUSE_FACEBOOK:Z

    if-nez v0, :cond_0

    .line 701
    :goto_0
    return-void

    .line 644
    :cond_0
    sget-object v0, Lcom/miniclip/facebook/MCFacebook;->mContext:Landroid/app/Activity;

    new-instance v1, Lcom/miniclip/facebook/MCFacebook$12;

    invoke-direct {v1, p0, p2}, Lcom/miniclip/facebook/MCFacebook$12;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static facebook_sendGift(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "friendsIds"    # Ljava/lang/String;
    .param p3, "objectId"    # Ljava/lang/String;

    .prologue
    .line 811
    sget-boolean v1, Lcom/miniclip/facebook/MCFacebook;->mUSE_FACEBOOK:Z

    if-nez v1, :cond_0

    .line 825
    :goto_0
    return-void

    .line 815
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 816
    .local v0, "params":Landroid/os/Bundle;
    const-string v1, "message"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 817
    const-string v1, "title"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    const-string v1, "to"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 819
    const-string v1, "object_id"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 820
    const-string v1, "action_type"

    const-string v2, "send"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 821
    const-string v1, "frictionless"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 822
    const-string v1, "data"

    const-string v2, "gift"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 824
    invoke-static {v0}, Lcom/miniclip/facebook/MCFacebook;->facebook_showRequestDialog(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private static facebook_showRequestDialog(Landroid/os/Bundle;)V
    .locals 2
    .param p0, "params"    # Landroid/os/Bundle;

    .prologue
    .line 722
    sget-object v0, Lcom/miniclip/facebook/MCFacebook;->mContext:Landroid/app/Activity;

    new-instance v1, Lcom/miniclip/facebook/MCFacebook$14;

    invoke-direct {v1, p0}, Lcom/miniclip/facebook/MCFacebook$14;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 789
    return-void
.end method

.method public static onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p0, "requestCode"    # I
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    .line 190
    sget-boolean v0, Lcom/miniclip/facebook/MCFacebook;->mUSE_FACEBOOK:Z

    if-eqz v0, :cond_0

    .line 192
    sget-object v0, Lcom/miniclip/facebook/MCFacebook;->mFB_Session:Lcom/facebook/Session;

    sget-object v1, Lcom/miniclip/facebook/MCFacebook;->mContext:Landroid/app/Activity;

    invoke-virtual {v0, v1, p0, p1, p2}, Lcom/facebook/Session;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)Z

    .line 193
    sget-object v0, Lcom/miniclip/facebook/MCFacebook;->mUIHelper:Lcom/facebook/UiLifecycleHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, p2, v1}, Lcom/facebook/UiLifecycleHelper;->onActivityResult(IILandroid/content/Intent;Lcom/facebook/widget/FacebookDialog$Callback;)V

    .line 195
    :cond_0
    return-void
.end method

.method public static onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p0, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 171
    sget-boolean v0, Lcom/miniclip/facebook/MCFacebook;->mUSE_FACEBOOK:Z

    if-eqz v0, :cond_0

    .line 172
    sget-object v0, Lcom/miniclip/facebook/MCFacebook;->mContext:Landroid/app/Activity;

    invoke-static {v0}, Lcom/facebook/Session;->openActiveSessionFromCache(Landroid/content/Context;)Lcom/facebook/Session;

    move-result-object v0

    sput-object v0, Lcom/miniclip/facebook/MCFacebook;->mFB_Session:Lcom/facebook/Session;

    .line 174
    new-instance v0, Lcom/facebook/UiLifecycleHelper;

    sget-object v1, Lcom/miniclip/facebook/MCFacebook;->mContext:Landroid/app/Activity;

    new-instance v2, Lcom/miniclip/facebook/MCFacebook$1;

    invoke-direct {v2}, Lcom/miniclip/facebook/MCFacebook$1;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/facebook/UiLifecycleHelper;-><init>(Landroid/app/Activity;Lcom/facebook/Session$StatusCallback;)V

    sput-object v0, Lcom/miniclip/facebook/MCFacebook;->mUIHelper:Lcom/facebook/UiLifecycleHelper;

    .line 181
    sget-object v0, Lcom/miniclip/facebook/MCFacebook;->mFB_Session:Lcom/facebook/Session;

    if-nez v0, :cond_0

    .line 182
    const-string v0, "MCFacebook"

    const-string v1, "FB: Cannot open session from cache"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    new-instance v0, Lcom/facebook/Session;

    sget-object v1, Lcom/miniclip/facebook/MCFacebook;->mContext:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/facebook/Session;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miniclip/facebook/MCFacebook;->mFB_Session:Lcom/facebook/Session;

    .line 186
    :cond_0
    return-void
.end method

.method public static onResume()V
    .locals 2

    .prologue
    .line 199
    sget-boolean v0, Lcom/miniclip/facebook/MCFacebook;->mUSE_FACEBOOK:Z

    if-eqz v0, :cond_0

    .line 201
    sget-object v0, Lcom/miniclip/facebook/MCFacebook;->mContext:Landroid/app/Activity;

    sget-object v1, Lcom/miniclip/facebook/MCFacebook;->mFacebookAPP_ID:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/facebook/AppEventsLogger;->activateApp(Landroid/content/Context;Ljava/lang/String;)V

    .line 202
    const-string v0, "Facebook"

    const-string v1, "Tracked installation."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :cond_0
    return-void
.end method
