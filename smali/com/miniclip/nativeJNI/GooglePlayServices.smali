.class public Lcom/miniclip/nativeJNI/GooglePlayServices;
.super Ljava/lang/Object;
.source "GooglePlayServices.java"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miniclip/nativeJNI/GooglePlayServices$GooglePlayServicesListener;
    }
.end annotation


# static fields
.field static final RC_RESOLVE:I = 0x2329

.field static final RC_UNUSED:I = 0x232a

.field public static final REQUEST_AUTHORIZATION:I = 0x2328

.field public static final REQUEST_SHARE:I = 0x1f40

.field static final SIGN_IN_ERROR_MESSAGE:Ljava/lang/String; = "Could not sign in. Please try again."

.field static final SIGN_IN_MESSAGE:Ljava/lang/String; = "Signing in with Google..."

.field static final SIGN_OUT_MESSAGE:Ljava/lang/String; = "Signing out..."

.field private static mActivity:Lcom/miniclip/eightballpool/EightBallPoolGoogleBaseActivity;

.field protected static mAdvertisingID:Ljava/lang/String;

.field protected static mContext:Landroid/content/Context;

.field private static mDelegate:I

.field static mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

.field private static mGooglePlayServices:Lcom/miniclip/nativeJNI/GooglePlayServices;

.field private static mToken:Ljava/lang/String;

.field private static people:Lorg/json/JSONObject;


# instance fields
.field mConnectedClient:Z

.field mConnectionProgressDialog:Landroid/app/ProgressDialog;

.field mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

.field mDebugLog:Z

.field mDebugTag:Ljava/lang/String;

.field mExpectingActivityResult:Z

.field mInvitationId:Ljava/lang/String;

.field mListener:Lcom/miniclip/nativeJNI/GooglePlayServices$GooglePlayServicesListener;

.field mShareDelegate:I

.field mSignedIn:Z

.field mUseGames:Z

.field mUsePlus:Z

.field mUserInitiatedSignIn:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 90
    sput-object v0, Lcom/miniclip/nativeJNI/GooglePlayServices;->mActivity:Lcom/miniclip/eightballpool/EightBallPoolGoogleBaseActivity;

    .line 91
    sput-object v0, Lcom/miniclip/nativeJNI/GooglePlayServices;->mContext:Landroid/content/Context;

    .line 92
    sput-object v0, Lcom/miniclip/nativeJNI/GooglePlayServices;->mGooglePlayServices:Lcom/miniclip/nativeJNI/GooglePlayServices;

    .line 104
    sput-object v0, Lcom/miniclip/nativeJNI/GooglePlayServices;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 106
    const-string v0, ""

    sput-object v0, Lcom/miniclip/nativeJNI/GooglePlayServices;->mToken:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/miniclip/eightballpool/EightBallPoolGoogleBaseActivity;)V
    .locals 4
    .param p1, "activity"    # Lcom/miniclip/eightballpool/EightBallPoolGoogleBaseActivity;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput-boolean v2, p0, Lcom/miniclip/nativeJNI/GooglePlayServices;->mUseGames:Z

    .line 117
    iput-boolean v2, p0, Lcom/miniclip/nativeJNI/GooglePlayServices;->mUsePlus:Z

    .line 120
    iput-boolean v2, p0, Lcom/miniclip/nativeJNI/GooglePlayServices;->mConnectedClient:Z

    .line 123
    iput-object v3, p0, Lcom/miniclip/nativeJNI/GooglePlayServices;->mConnectionProgressDialog:Landroid/app/ProgressDialog;

    .line 129
    iput-boolean v2, p0, Lcom/miniclip/nativeJNI/GooglePlayServices;->mUserInitiatedSignIn:Z

    .line 132
    iput-object v3, p0, Lcom/miniclip/nativeJNI/GooglePlayServices;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    .line 136
    iput-boolean v2, p0, Lcom/miniclip/nativeJNI/GooglePlayServices;->mExpectingActivityResult:Z

    .line 139
    iput-boolean v2, p0, Lcom/miniclip/nativeJNI/GooglePlayServices;->mSignedIn:Z

    .line 142
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/miniclip/nativeJNI/GooglePlayServices;->mDebugLog:Z

    .line 143
    const-string v1, "BaseGameActivity"

    iput-object v1, p0, Lcom/miniclip/nativeJNI/GooglePlayServices;->mDebugTag:Ljava/lang/String;

    .line 155
    iput-object v3, p0, Lcom/miniclip/nativeJNI/GooglePlayServices;->mListener:Lcom/miniclip/nativeJNI/GooglePlayServices$GooglePlayServicesListener;

    .line 157
    iput v2, p0, Lcom/miniclip/nativeJNI/GooglePlayServices;->mShareDelegate:I

    .line 162
    sput-object p1, Lcom/miniclip/nativeJNI/GooglePlayServices;->mActivity:Lcom/miniclip/eightballpool/EightBallPoolGoogleBaseActivity;

    .line 163
    sput-object p1, Lcom/miniclip/nativeJNI/GooglePlayServices;->mContext:Landroid/content/Context;

    .line 164
    sput-object p0, Lcom/miniclip/nativeJNI/GooglePlayServices;->mGooglePlayServices:Lcom/miniclip/nativeJNI/GooglePlayServices;

    .line 166
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/miniclip/nativeJNI/GooglePlayServices$1;

    invoke-direct {v1, p0}, Lcom/miniclip/nativeJNI/GooglePlayServices$1;-><init>(Lcom/miniclip/nativeJNI/GooglePlayServices;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 181
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 182
    return-void
.end method

.method public static GPM_getCurrentPerson()Ljava/lang/String;
    .locals 5

    .prologue
    .line 983
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 984
    .local v1, "person":Lorg/json/JSONObject;
    sget-object v3, Lcom/google/android/gms/plus/Plus;->PeopleApi:Lcom/google/android/gms/plus/People;

    sget-object v4, Lcom/miniclip/nativeJNI/GooglePlayServices;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v3, v4}, Lcom/google/android/gms/plus/People;->getCurrentPerson(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/plus/model/people/Person;

    move-result-object v2

    .line 985
    .local v2, "personData":Lcom/google/android/gms/plus/model/people/Person;
    const-string v3, "id"

    invoke-interface {v2}, Lcom/google/android/gms/plus/model/people/Person;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 986
    const-string v3, "name"

    invoke-interface {v2}, Lcom/google/android/gms/plus/model/people/Person;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 987
    const-string v3, "url"

    invoke-interface {v2}, Lcom/google/android/gms/plus/model/people/Person;->getImage()Lcom/google/android/gms/plus/model/people/Person$Image;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/plus/model/people/Person$Image;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/miniclip/nativeJNI/GooglePlayServices;->deparameterize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 989
    invoke-interface {v2}, Lcom/google/android/gms/plus/model/people/Person;->hasBirthday()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 990
    const-string v3, "birthday"

    invoke-interface {v2}, Lcom/google/android/gms/plus/model/people/Person;->getBirthday()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 992
    :cond_0
    invoke-interface {v2}, Lcom/google/android/gms/plus/model/people/Person;->hasGender()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 993
    const-string v3, "gender"

    invoke-interface {v2}, Lcom/google/android/gms/plus/model/people/Person;->getGender()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 995
    :cond_1
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1000
    .end local v2    # "personData":Lcom/google/android/gms/plus/model/people/Person;
    :goto_0
    return-object v3

    .line 997
    :catch_0
    move-exception v0

    .line 998
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1000
    const-string v3, ""

    goto :goto_0
.end method

.method public static GPM_getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 969
    sget-object v0, Lcom/miniclip/nativeJNI/GooglePlayServices;->mToken:Ljava/lang/String;

    return-object v0
.end method

.method public static GPM_getVisiblePeople()Ljava/lang/String;
    .locals 3

    .prologue
    .line 977
    const-string v0, "tagg"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tagg number is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/miniclip/nativeJNI/GooglePlayServices;->people:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    sget-object v0, Lcom/miniclip/nativeJNI/GooglePlayServices;->people:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static GPM_gift()V
    .locals 2

    .prologue
    .line 934
    const-string v0, "tagg"

    const-string v1, "tagg gift"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    sget-object v0, Lcom/miniclip/nativeJNI/GooglePlayServices;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/miniclip/nativeJNI/GooglePlayServices$13;

    invoke-direct {v1}, Lcom/miniclip/nativeJNI/GooglePlayServices$13;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 940
    return-void
.end method

.method public static GPM_giftAll()V
    .locals 2

    .prologue
    .line 943
    const-string v0, "tagg"

    const-string v1, "tagg gift all"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    sget-object v0, Lcom/miniclip/nativeJNI/GooglePlayServices;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/miniclip/nativeJNI/GooglePlayServices$14;

    invoke-direct {v1}, Lcom/miniclip/nativeJNI/GooglePlayServices$14;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 949
    return-void
.end method

.method public static GPM_invite()V
    .locals 2

    .prologue
    .line 917
    sget-object v0, Lcom/miniclip/nativeJNI/GooglePlayServices;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/miniclip/nativeJNI/GooglePlayServices$11;

    invoke-direct {v1}, Lcom/miniclip/nativeJNI/GooglePlayServices$11;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 922
    return-void
.end method

.method public static GPM_inviteAll()V
    .locals 2

    .prologue
    .line 925
    const-string v0, "tagg"

    const-string v1, "tagg invite all"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    sget-object v0, Lcom/miniclip/nativeJNI/GooglePlayServices;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/miniclip/nativeJNI/GooglePlayServices$12;

    invoke-direct {v1}, Lcom/miniclip/nativeJNI/GooglePlayServices$12;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 931
    return-void
.end method

.method public static GPM_isConnected()Z
    .locals 1

    .prologue
    .line 961
    sget-object v0, Lcom/miniclip/nativeJNI/GooglePlayServices;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    return v0
.end method

.method public static GPM_share(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "delegate"    # I

    .prologue
    .line 952
    const-string v0, "tagg"

    const-string v1, "tagg gift all"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    sget-object v0, Lcom/miniclip/nativeJNI/GooglePlayServices;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/miniclip/nativeJNI/GooglePlayServices$15;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/miniclip/nativeJNI/GooglePlayServices$15;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 958
    return-void
.end method

.method public static GPM_showAchievements()V
    .locals 2

    .prologue
    .line 1074
    sget-object v0, Lcom/miniclip/nativeJNI/GooglePlayServices;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/miniclip/nativeJNI/GooglePlayServices$23;

    invoke-direct {v1}, Lcom/miniclip/nativeJNI/GooglePlayServices$23;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1080
    return-void
.end method

.method public static GPM_signIn(I)V
    .locals 2
    .param p0, "delegate"    # I

    .prologue
    .line 899
    sput p0, Lcom/miniclip/nativeJNI/GooglePlayServices;->mDelegate:I

    .line 900
    sget-object v0, Lcom/miniclip/nativeJNI/GooglePlayServices;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/miniclip/nativeJNI/GooglePlayServices$9;

    invoke-direct {v1}, Lcom/miniclip/nativeJNI/GooglePlayServices$9;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 905
    return-void
.end method

.method public static GPM_signOut(I)V
    .locals 2
    .param p0, "delegate"    # I

    .prologue
    .line 908
    sput p0, Lcom/miniclip/nativeJNI/GooglePlayServices;->mDelegate:I

    .line 909
    sget-object v0, Lcom/miniclip/nativeJNI/GooglePlayServices;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/miniclip/nativeJNI/GooglePlayServices$10;

    invoke-direct {v1}, Lcom/miniclip/nativeJNI/GooglePlayServices$10;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 914
    return-void
.end method

.method public static GPM_unlockAchievement(Ljava/lang/String;)V
    .locals 2
    .param p0, "achievementId"    # Ljava/lang/String;

    .prologue
    .line 1065
    sget-object v0, Lcom/miniclip/nativeJNI/GooglePlayServices;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/miniclip/nativeJNI/GooglePlayServices$22;

    invoke-direct {v1, p0}, Lcom/miniclip/nativeJNI/GooglePlayServices$22;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1071
    return-void
.end method

.method public static native MGooglePlusShareCallbackOnFailure(II)V
.end method

.method public static native MGooglePlusShareCallbackOnSuccess(Ljava/lang/String;I)V
.end method

.method public static native MGooglePlusShowOverlayCallback(Ljava/lang/Boolean;)V
.end method

.method public static native MGooglePlusSignInCallbackOnFailure(II)V
.end method

.method public static native MGooglePlusSignInCallbackOnSuccess(Ljava/lang/String;I)V
.end method

.method public static native MPeopleLoaded(Ljava/lang/String;I)V
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/miniclip/nativeJNI/GooglePlayServices;->mToken:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 58
    sput-object p0, Lcom/miniclip/nativeJNI/GooglePlayServices;->mToken:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100()Lcom/miniclip/eightballpool/EightBallPoolGoogleBaseActivity;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/miniclip/nativeJNI/GooglePlayServices;->mActivity:Lcom/miniclip/eightballpool/EightBallPoolGoogleBaseActivity;

    return-object v0
.end method

.method static synthetic access$200()I
    .locals 1

    .prologue
    .line 58
    sget v0, Lcom/miniclip/nativeJNI/GooglePlayServices;->mDelegate:I

    return v0
.end method

.method static synthetic access$300()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/miniclip/nativeJNI/GooglePlayServices;->people:Lorg/json/JSONObject;

    return-object v0
.end method

.method static synthetic access$400()Lcom/miniclip/nativeJNI/GooglePlayServices;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/miniclip/nativeJNI/GooglePlayServices;->mGooglePlayServices:Lcom/miniclip/nativeJNI/GooglePlayServices;

    return-object v0
.end method

.method public static canShare()Z
    .locals 1

    .prologue
    .line 973
    sget-object v0, Lcom/miniclip/nativeJNI/GooglePlayServices;->mActivity:Lcom/miniclip/eightballpool/EightBallPoolGoogleBaseActivity;

    invoke-static {v0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static deparameterize(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "uri"    # Ljava/lang/String;

    .prologue
    .line 884
    if-nez p0, :cond_1

    .line 885
    const-string p0, ""

    .line 890
    .end local p0    # "uri":Ljava/lang/String;
    .local v0, "i":I
    :cond_0
    :goto_0
    return-object p0

    .line 886
    .end local v0    # "i":I
    .restart local p0    # "uri":Ljava/lang/String;
    :cond_1
    const/16 v1, 0x3f

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 887
    .restart local v0    # "i":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 890
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static getGoogleAdvertisingID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    sget-object v0, Lcom/miniclip/nativeJNI/GooglePlayServices;->mAdvertisingID:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miniclip/nativeJNI/GooglePlayServices;->mAdvertisingID:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static isConnecting()Z
    .locals 1

    .prologue
    .line 965
    sget-object v0, Lcom/miniclip/nativeJNI/GooglePlayServices;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnecting()Z

    move-result v0

    return v0
.end method

.method private onShareCancelled()V
    .locals 4

    .prologue
    .line 1016
    const-string v1, "tagg"

    const-string v2, "Share cancelled"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    iget v0, p0, Lcom/miniclip/nativeJNI/GooglePlayServices;->mShareDelegate:I

    .line 1018
    .local v0, "delegate":I
    const/4 v1, 0x0

    iput v1, p0, Lcom/miniclip/nativeJNI/GooglePlayServices;->mShareDelegate:I

    .line 1019
    sget-object v1, Lcom/miniclip/nativeJNI/GooglePlayServices;->mActivity:Lcom/miniclip/eightballpool/EightBallPoolGoogleBaseActivity;

    sget-object v2, Lcom/miniclip/framework/ThreadingContext;->GlThread:Lcom/miniclip/framework/ThreadingContext;

    new-instance v3, Lcom/miniclip/nativeJNI/GooglePlayServices$17;

    invoke-direct {v3, p0, v0}, Lcom/miniclip/nativeJNI/GooglePlayServices$17;-><init>(Lcom/miniclip/nativeJNI/GooglePlayServices;I)V

    invoke-virtual {v1, v2, v3}, Lcom/miniclip/eightballpool/EightBallPoolGoogleBaseActivity;->queueEvent(Lcom/miniclip/framework/ThreadingContext;Ljava/lang/Runnable;)V

    .line 1025
    return-void
.end method

.method private onShared()V
    .locals 4

    .prologue
    .line 1004
    const-string v1, "tagg"

    const-string v2, "Shared"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    iget v0, p0, Lcom/miniclip/nativeJNI/GooglePlayServices;->mShareDelegate:I

    .line 1006
    .local v0, "delegate":I
    const/4 v1, 0x0

    iput v1, p0, Lcom/miniclip/nativeJNI/GooglePlayServices;->mShareDelegate:I

    .line 1007
    sget-object v1, Lcom/miniclip/nativeJNI/GooglePlayServices;->mActivity:Lcom/miniclip/eightballpool/EightBallPoolGoogleBaseActivity;

    sget-object v2, Lcom/miniclip/framework/ThreadingContext;->GlThread:Lcom/miniclip/framework/ThreadingContext;

    new-instance v3, Lcom/miniclip/nativeJNI/GooglePlayServices$16;

    invoke-direct {v3, p0, v0}, Lcom/miniclip/nativeJNI/GooglePlayServices$16;-><init>(Lcom/miniclip/nativeJNI/GooglePlayServices;I)V

    invoke-virtual {v1, v2, v3}, Lcom/miniclip/eightballpool/EightBallPoolGoogleBaseActivity;->queueEvent(Lcom/miniclip/framework/ThreadingContext;Ljava/lang/Runnable;)V

    .line 1013
    return-void
.end method


# virtual methods
.method public GPM_showLeaderboard(Ljava/lang/String;)V
    .locals 2
    .param p1, "leaderboardId"    # Ljava/lang/String;

    .prologue
    .line 1037
    sget-object v0, Lcom/miniclip/nativeJNI/GooglePlayServices;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/miniclip/nativeJNI/GooglePlayServices$19;

    invoke-direct {v1, p0, p1}, Lcom/miniclip/nativeJNI/GooglePlayServices$19;-><init>(Lcom/miniclip/nativeJNI/GooglePlayServices;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1043
    return-void
.end method

.method public GPM_showLeaderboards()V
    .locals 2

    .prologue
    .line 1046
    sget-object v0, Lcom/miniclip/nativeJNI/GooglePlayServices;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/miniclip/nativeJNI/GooglePlayServices$20;

    invoke-direct {v1, p0}, Lcom/miniclip/nativeJNI/GooglePlayServices$20;-><init>(Lcom/miniclip/nativeJNI/GooglePlayServices;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1052
    return-void
.end method

.method public GPM_updateAchievement(Ljava/lang/String;F)V
    .locals 2
    .param p1, "achievementId"    # Ljava/lang/String;
    .param p2, "progressValue"    # F

    .prologue
    .line 1056
    sget-object v0, Lcom/miniclip/nativeJNI/GooglePlayServices;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/miniclip/nativeJNI/GooglePlayServices$21;

    invoke-direct {v1, p0, p1, p2}, Lcom/miniclip/nativeJNI/GooglePlayServices$21;-><init>(Lcom/miniclip/nativeJNI/GooglePlayServices;Ljava/lang/String;F)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1062
    return-void
.end method

.method public GPM_updateScore(Ljava/lang/String;JLjava/lang/Object;)V
    .locals 8
    .param p1, "leaderboardId"    # Ljava/lang/String;
    .param p2, "scoreValue"    # J
    .param p4, "userData"    # Ljava/lang/Object;

    .prologue
    .line 1028
    sget-object v0, Lcom/miniclip/nativeJNI/GooglePlayServices;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/miniclip/nativeJNI/GooglePlayServices$18;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/miniclip/nativeJNI/GooglePlayServices$18;-><init>(Lcom/miniclip/nativeJNI/GooglePlayServices;Ljava/lang/String;JLjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1034
    return-void
.end method

.method public beginUserInitiatedSignIn()V
    .locals 3

    .prologue
    .line 520
    iget-boolean v1, p0, Lcom/miniclip/nativeJNI/GooglePlayServices;->mSignedIn:Z

    if-eqz v1, :cond_1

    .line 547
    :cond_0
    :goto_0
    return-void

    .line 523
    :cond_1
    sget-object v1, Lcom/miniclip/nativeJNI/GooglePlayServices;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    .line 524
    .local v0, "result":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "beginUserInitiatedSignIn: isGooglePlayServicesAvailable returned "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/miniclip/nativeJNI/GooglePlayServices;->debugLog(Ljava/lang/String;)V

    .line 525
    if-eqz v0, :cond_2

    .line 527
    const-string v1, "beginUserInitiatedSignIn: Google Play services not available. Show error dialog."

    invoke-virtual {p0, v1}, Lcom/miniclip/nativeJNI/GooglePlayServices;->debugLog(Ljava/lang/String;)V

    .line 529
    iget-object v1, p0, Lcom/miniclip/nativeJNI/GooglePlayServices;->mListener:Lcom/miniclip/nativeJNI/GooglePlayServices$GooglePlayServicesListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miniclip/nativeJNI/GooglePlayServices;->mListener:Lcom/miniclip/nativeJNI/GooglePlayServices$GooglePlayServicesListener;

    invoke-interface {v1}, Lcom/miniclip/nativeJNI/GooglePlayServices$GooglePlayServicesListener;->onSignInFailed()V

    goto :goto_0

    .line 534
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/miniclip/nativeJNI/GooglePlayServices;->mUserInitiatedSignIn:Z

    .line 535
    iget-object v1, p0, Lcom/miniclip/nativeJNI/GooglePlayServices;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v1, :cond_3

    .line 537
    const-string v1, "beginUserInitiatedSignIn: continuing pending sign-in flow."

    invoke-virtual {p0, v1}, Lcom/miniclip/nativeJNI/GooglePlayServices;->debugLog(Ljava/lang/String;)V

    .line 538
    iget-object v1, p0, Lcom/miniclip/nativeJNI/GooglePlayServices;->mConnectionProgressDialog:Landroid/app/ProgressDialog;

    const-string v2, "Signing in with Google..."

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 539
    iget-object v1, p0, Lcom/miniclip/nativeJNI/GooglePlayServices;->mConnectionProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 540
    invoke-virtual {p0}, Lcom/miniclip/nativeJNI/GooglePlayServices;->resolveConnectionResult()V

    goto :goto_0

    .line 544
    :cond_3
    const-string v1, "beginUserInitiatedSignIn: starting new sign-in flow."

    invoke-virtual {p0, v1}, Lcom/miniclip/nativeJNI/GooglePlayServices;->debugLog(Ljava/lang/String;)V

    .line 545
    invoke-virtual {p0}, Lcom/miniclip/nativeJNI/GooglePlayServices;->startConnections()V

    goto :goto_0
.end method

.method connectCurrentClient()V
    .locals 1

    .prologue
    .line 260
    const-string v0, "tagg connecting a client"

    invoke-virtual {p0, v0}, Lcom/miniclip/nativeJNI/GooglePlayServices;->debugLog(Ljava/lang/String;)V

    .line 261
    sget-object v0, Lcom/miniclip/nativeJNI/GooglePlayServices;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 263
    sget-object v0, Lcom/miniclip/nativeJNI/GooglePlayServices;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    .line 265
    :cond_0
    return-void
.end method

.method debugLog(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 664
    iget-boolean v0, p0, Lcom/miniclip/nativeJNI/GooglePlayServices;->mDebugLog:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miniclip/nativeJNI/GooglePlayServices;->mDebugTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GooglePlayServices: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    :cond_0
    return-void
.end method

.method public enableDebugLog(ZLjava/lang/String;)V
    .locals 0
    .param p1, "enabled"    # Z
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 659
    iput-boolean p1, p0, Lcom/miniclip/nativeJNI/GooglePlayServices;->mDebugLog:Z

    .line 660
    iput-object p2, p0, Lcom/miniclip/nativeJNI/GooglePlayServices;->mDebugTag:Ljava/lang/String;

    .line 661
    return-void
.end method

.method getErrorDialog(I)Landroid/app/Dialog;
    .locals 7
    .param p1, "errorCode"    # I

    .prologue
    .line 571
    invoke-static {p1}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isUserRecoverableError(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 573
    iget-object v3, p0, Lcom/miniclip/nativeJNI/GooglePlayServices;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    .line 574
    invoke-virtual {v3}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v3

    sget-object v4, Lcom/miniclip/nativeJNI/GooglePlayServices;->mActivity:Lcom/miniclip/eightballpool/EightBallPoolGoogleBaseActivity;

    const/16 v5, 0x232a

    const/4 v6, 0x0

    .line 573
    invoke-static {v3, v4, v5, v6}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->getErrorDialog(ILandroid/app/Activity;ILandroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object v0

    .line 575
    .local v0, "errorDialog":Landroid/app/Dialog;
    if-eqz v0, :cond_0

    .line 639
    .end local v0    # "errorDialog":Landroid/app/Dialog;
    :goto_0
    return-object v0

    .line 581
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 634
    const-string v2, "An unexpected error occurred during sign-in. Try again later."

    .line 635
    .local v2, "userMessage":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/miniclip/nativeJNI/GooglePlayServices;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v4}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 638
    .local v1, "logMessage":Ljava/lang/String;
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ERROR CODE "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": message="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; details="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/miniclip/nativeJNI/GooglePlayServices;->debugLog(Ljava/lang/String;)V

    .line 639
    invoke-virtual {p0, v2}, Lcom/miniclip/nativeJNI/GooglePlayServices;->makeSignInErrorDialog(Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 583
    .end local v1    # "logMessage":Ljava/lang/String;
    .end local v2    # "userMessage":Ljava/lang/String;
    :pswitch_0
    const-string v2, "Application configuration problem."

    .line 584
    .restart local v2    # "userMessage":Ljava/lang/String;
    const-string v1, "DEVELOPER_ERROR: Check package name, signing certificate, app ID."

    .line 585
    .restart local v1    # "logMessage":Ljava/lang/String;
    goto :goto_1

    .line 587
    .end local v1    # "logMessage":Ljava/lang/String;
    .end local v2    # "userMessage":Ljava/lang/String;
    :pswitch_1
    const-string v2, "Internal error. Please try again later."

    .line 588
    .restart local v2    # "userMessage":Ljava/lang/String;
    const-string v1, "INTERNAL_ERROR"

    .line 589
    .restart local v1    # "logMessage":Ljava/lang/String;
    goto :goto_1

    .line 591
    .end local v1    # "logMessage":Ljava/lang/String;
    .end local v2    # "userMessage":Ljava/lang/String;
    :pswitch_2
    const-string v2, "Invalid account. Try using a different account."

    .line 592
    .restart local v2    # "userMessage":Ljava/lang/String;
    const-string v1, "INVALID_ACCOUNT"

    .line 593
    .restart local v1    # "logMessage":Ljava/lang/String;
    goto :goto_1

    .line 595
    .end local v1    # "logMessage":Ljava/lang/String;
    .end local v2    # "userMessage":Ljava/lang/String;
    :pswitch_3
    const-string v2, "Cannot verify application license."

    .line 596
    .restart local v2    # "userMessage":Ljava/lang/String;
    const-string v1, "LICENSE_CHECK_FAILED: app license could not be verified."

    .line 597
    .restart local v1    # "logMessage":Ljava/lang/String;
    goto :goto_1

    .line 599
    .end local v1    # "logMessage":Ljava/lang/String;
    .end local v2    # "userMessage":Ljava/lang/String;
    :pswitch_4
    const-string v2, "There was a network problem while connecting. Please check that you are online and try again later."

    .line 600
    .restart local v2    # "userMessage":Ljava/lang/String;
    const-string v1, "NETWORK_ERROR: check connection, try again."

    .line 601
    .restart local v1    # "logMessage":Ljava/lang/String;
    goto :goto_1

    .line 604
    .end local v1    # "logMessage":Ljava/lang/String;
    .end local v2    # "userMessage":Ljava/lang/String;
    :pswitch_5
    const-string v2, "There was a sign-in issue that could not be resolved."

    .line 605
    .restart local v2    # "userMessage":Ljava/lang/String;
    const-string v1, "RESOLUTION_REQUIRED: Result resolution is required, but was not performed."

    .line 606
    .restart local v1    # "logMessage":Ljava/lang/String;
    goto :goto_1

    .line 608
    .end local v1    # "logMessage":Ljava/lang/String;
    .end local v2    # "userMessage":Ljava/lang/String;
    :pswitch_6
    const-string v2, "Cannot sign-in. Verify that Google Play services are enabled and try again."

    .line 609
    .restart local v2    # "userMessage":Ljava/lang/String;
    const-string v1, "SERVICE_DISABLED: Google Play services may have been manually disabled."

    .line 610
    .restart local v1    # "logMessage":Ljava/lang/String;
    goto :goto_1

    .line 612
    .end local v1    # "logMessage":Ljava/lang/String;
    .end local v2    # "userMessage":Ljava/lang/String;
    :pswitch_7
    const-string v2, "Cannot sign-in. Verify that Google Play services are correctly set up and try again."

    .line 613
    .restart local v2    # "userMessage":Ljava/lang/String;
    const-string v1, "SERVICE_INVALID. Google Play services may need to be reinstalled on device."

    .line 614
    .restart local v1    # "logMessage":Ljava/lang/String;
    goto :goto_1

    .line 616
    .end local v1    # "logMessage":Ljava/lang/String;
    .end local v2    # "userMessage":Ljava/lang/String;
    :pswitch_8
    const-string v2, "Cannot sign-in. Verify that Google Play services are correctly installed and try again."

    .line 617
    .restart local v2    # "userMessage":Ljava/lang/String;
    const-string v1, "SERVICE_MISSING. Google Play services may not be installed on the device."

    .line 618
    .restart local v1    # "logMessage":Ljava/lang/String;
    goto :goto_1

    .line 620
    .end local v1    # "logMessage":Ljava/lang/String;
    .end local v2    # "userMessage":Ljava/lang/String;
    :pswitch_9
    const-string v2, "A newer version of Google Play services is required. Please update and try again."

    .line 621
    .restart local v2    # "userMessage":Ljava/lang/String;
    const-string v1, "SERVICE_VERSION_UPDATE_REQUIRED. Must install newer version of Google Play services."

    .line 622
    .restart local v1    # "logMessage":Ljava/lang/String;
    goto :goto_1

    .line 625
    .end local v1    # "logMessage":Ljava/lang/String;
    .end local v2    # "userMessage":Ljava/lang/String;
    :pswitch_a
    const-string v2, "There was an issue with sign-in."

    .line 626
    .restart local v2    # "userMessage":Ljava/lang/String;
    const-string v1, "SIGN_IN_REQUIRED"

    .line 627
    .restart local v1    # "logMessage":Ljava/lang/String;
    goto :goto_1

    .line 630
    .end local v1    # "logMessage":Ljava/lang/String;
    .end local v2    # "userMessage":Ljava/lang/String;
    :pswitch_b
    const-string v2, "Sign-in successful."

    .line 631
    .restart local v2    # "userMessage":Ljava/lang/String;
    const-string v1, "SUCCESS"

    .line 632
    .restart local v1    # "logMessage":Ljava/lang/String;
    goto :goto_1

    .line 581
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_8
        :pswitch_9
        :pswitch_6
        :pswitch_a
        :pswitch_2
        :pswitch_5
        :pswitch_4
        :pswitch_1
        :pswitch_7
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public getInvitationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 655
    iget-object v0, p0, Lcom/miniclip/nativeJNI/GooglePlayServices;->mInvitationId:Ljava/lang/String;

    return-object v0
.end method

.method giveUp()V
    .locals 3

    .prologue
    .line 486
    iget-object v0, p0, Lcom/miniclip/nativeJNI/GooglePlayServices;->mConnectionProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 487
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "giveUp: giving up on connection. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/miniclip/nativeJNI/GooglePlayServices;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    if-nez v0, :cond_1

    const-string v0, "(no connection result)"

    .line 489
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 487
    invoke-virtual {p0, v0}, Lcom/miniclip/nativeJNI/GooglePlayServices;->debugLog(Ljava/lang/String;)V

    .line 502
    iget-object v0, p0, Lcom/miniclip/nativeJNI/GooglePlayServices;->mListener:Lcom/miniclip/nativeJNI/GooglePlayServices$GooglePlayServicesListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miniclip/nativeJNI/GooglePlayServices;->mListener:Lcom/miniclip/nativeJNI/GooglePlayServices$GooglePlayServicesListener;

    invoke-interface {v0}, Lcom/miniclip/nativeJNI/GooglePlayServices$GooglePlayServicesListener;->onSignInFailed()V

    .line 504
    :cond_0
    sget-object v0, Lcom/miniclip/nativeJNI/GooglePlayServices;->mActivity:Lcom/miniclip/eightballpool/EightBallPoolGoogleBaseActivity;

    sget-object v1, Lcom/miniclip/framework/ThreadingContext;->GlThread:Lcom/miniclip/framework/ThreadingContext;

    new-instance v2, Lcom/miniclip/nativeJNI/GooglePlayServices$5;

    invoke-direct {v2, p0}, Lcom/miniclip/nativeJNI/GooglePlayServices$5;-><init>(Lcom/miniclip/nativeJNI/GooglePlayServices;)V

    invoke-virtual {v0, v1, v2}, Lcom/miniclip/eightballpool/EightBallPoolGoogleBaseActivity;->queueEvent(Lcom/miniclip/framework/ThreadingContext;Ljava/lang/Runnable;)V

    .line 513
    return-void

    .line 487
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Status code: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/miniclip/nativeJNI/GooglePlayServices;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    .line 489
    invoke-virtual {v2}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public isSignedIn()Z
    .locals 1

    .prologue
    .line 229
    iget-boolean v0, p0, Lcom/miniclip/nativeJNI/GooglePlayServices;->mSignedIn:Z

    return v0
.end method

.method killConnections()V
    .locals 1

    .prologue
    .line 268
    sget-object v0, Lcom/miniclip/nativeJNI/GooglePlayServices;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miniclip/nativeJNI/GooglePlayServices;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    sget-object v0, Lcom/miniclip/nativeJNI/GooglePlayServices;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    .line 271
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miniclip/nativeJNI/GooglePlayServices;->mConnectedClient:Z

    .line 272
    return-void
.end method

.method public loadVisiblePeople()V
    .locals 3

    .prologue
    .line 361
    const-string v0, "load Visible People"

    invoke-virtual {p0, v0}, Lcom/miniclip/nativeJNI/GooglePlayServices;->debugLog(Ljava/lang/String;)V

    .line 362
    sget-object v0, Lcom/google/android/gms/plus/Plus;->PeopleApi:Lcom/google/android/gms/plus/People;

    sget-object v1, Lcom/miniclip/nativeJNI/GooglePlayServices;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/plus/People;->loadVisible(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    new-instance v1, Lcom/miniclip/nativeJNI/GooglePlayServices$3;

    invoke-direct {v1, p0}, Lcom/miniclip/nativeJNI/GooglePlayServices$3;-><init>(Lcom/miniclip/nativeJNI/GooglePlayServices;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    .line 369
    return-void
.end method

.method makeSignInErrorDialog(Ljava/lang/String;)Landroid/app/Dialog;
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 648
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lcom/miniclip/nativeJNI/GooglePlayServices;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Sign-in error"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 649
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "OK"

    const/4 v2, 0x0

    .line 650
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 651
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 648
    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "responseCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, -0x1

    .line 453
    const/16 v0, 0x2329

    if-ne p1, v0, :cond_2

    .line 456
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miniclip/nativeJNI/GooglePlayServices;->mExpectingActivityResult:Z

    .line 457
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityResult, req "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " response "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miniclip/nativeJNI/GooglePlayServices;->debugLog(Ljava/lang/String;)V

    .line 458
    if-ne p2, v2, :cond_1

    .line 460
    const-string v0, "responseCode == RESULT_OK. So connecting."

    invoke-virtual {p0, v0}, Lcom/miniclip/nativeJNI/GooglePlayServices;->debugLog(Ljava/lang/String;)V

    .line 461
    invoke-virtual {p0}, Lcom/miniclip/nativeJNI/GooglePlayServices;->connectCurrentClient()V

    .line 476
    :cond_0
    :goto_0
    return-void

    .line 466
    :cond_1
    const-string v0, "responseCode != RESULT_OK, so not reconnecting."

    invoke-virtual {p0, v0}, Lcom/miniclip/nativeJNI/GooglePlayServices;->debugLog(Ljava/lang/String;)V

    .line 467
    invoke-virtual {p0}, Lcom/miniclip/nativeJNI/GooglePlayServices;->giveUp()V

    goto :goto_0

    .line 469
    :cond_2
    const/16 v0, 0x1f40

    if-ne p1, v0, :cond_0

    .line 470
    if-ne p2, v2, :cond_3

    .line 471
    invoke-direct {p0}, Lcom/miniclip/nativeJNI/GooglePlayServices;->onShared()V

    goto :goto_0

    .line 473
    :cond_3
    invoke-direct {p0}, Lcom/miniclip/nativeJNI/GooglePlayServices;->onShareCancelled()V

    goto :goto_0
.end method

.method public onConnected(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "connectionHint"    # Landroid/os/Bundle;

    .prologue
    .line 295
    const-string v2, "onConnected: connected!"

    invoke-virtual {p0, v2}, Lcom/miniclip/nativeJNI/GooglePlayServices;->debugLog(Ljava/lang/String;)V

    .line 298
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/miniclip/nativeJNI/GooglePlayServices;->mConnectedClient:Z

    .line 302
    iget-boolean v2, p0, Lcom/miniclip/nativeJNI/GooglePlayServices;->mUseGames:Z

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    .line 303
    const-string v2, "onConnected: connection hint provided. Checking for invite."

    invoke-virtual {p0, v2}, Lcom/miniclip/nativeJNI/GooglePlayServices;->debugLog(Ljava/lang/String;)V

    .line 304
    const-string v2, "invitation"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/multiplayer/Invitation;

    .line 305
    .local v0, "inv":Lcom/google/android/gms/games/multiplayer/Invitation;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/games/multiplayer/Invitation;->getInvitationId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 307
    const-string v2, "onConnected: connection hint has a room invite!"

    invoke-virtual {p0, v2}, Lcom/miniclip/nativeJNI/GooglePlayServices;->debugLog(Ljava/lang/String;)V

    .line 308
    invoke-interface {v0}, Lcom/google/android/gms/games/multiplayer/Invitation;->getInvitationId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/miniclip/nativeJNI/GooglePlayServices;->mInvitationId:Ljava/lang/String;

    .line 309
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invitation ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/miniclip/nativeJNI/GooglePlayServices;->mInvitationId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/miniclip/nativeJNI/GooglePlayServices;->debugLog(Ljava/lang/String;)V

    .line 313
    .end local v0    # "inv":Lcom/google/android/gms/games/multiplayer/Invitation;
    :cond_0
    iget-boolean v2, p0, Lcom/miniclip/nativeJNI/GooglePlayServices;->mUsePlus:Z

    if-eqz v2, :cond_1

    .line 314
    new-instance v1, Lcom/miniclip/nativeJNI/GooglePlayServices$2;

    invoke-direct {v1, p0}, Lcom/miniclip/nativeJNI/GooglePlayServices$2;-><init>(Lcom/miniclip/nativeJNI/GooglePlayServices;)V

    .line 349
    .local v1, "thread":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 355
    .end local v1    # "thread":Ljava/lang/Thread;
    :cond_1
    const-string v2, "All clients now connected. Sign-in successful."

    invoke-virtual {p0, v2}, Lcom/miniclip/nativeJNI/GooglePlayServices;->debugLog(Ljava/lang/String;)V

    .line 356
    invoke-virtual {p0}, Lcom/miniclip/nativeJNI/GooglePlayServices;->succeedSignIn()V

    .line 357
    return-void
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2
    .param p1, "result"    # Lcom/google/android/gms/common/ConnectionResult;

    .prologue
    .line 384
    iput-object p1, p0, Lcom/miniclip/nativeJNI/GooglePlayServices;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    .line 385
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConnectionFailed: result "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miniclip/nativeJNI/GooglePlayServices;->debugLog(Ljava/lang/String;)V

    .line 386
    iget-object v0, p0, Lcom/miniclip/nativeJNI/GooglePlayServices;->mConnectionProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 388
    iget-boolean v0, p0, Lcom/miniclip/nativeJNI/GooglePlayServices;->mUserInitiatedSignIn:Z

    if-nez v0, :cond_1

    .line 392
    const-string v0, "onConnectionFailed: since user didn\'t initiate sign-in, failing now."

    invoke-virtual {p0, v0}, Lcom/miniclip/nativeJNI/GooglePlayServices;->debugLog(Ljava/lang/String;)V

    .line 393
    iput-object p1, p0, Lcom/miniclip/nativeJNI/GooglePlayServices;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    .line 394
    iget-object v0, p0, Lcom/miniclip/nativeJNI/GooglePlayServices;->mListener:Lcom/miniclip/nativeJNI/GooglePlayServices$GooglePlayServicesListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miniclip/nativeJNI/GooglePlayServices;->mListener:Lcom/miniclip/nativeJNI/GooglePlayServices$GooglePlayServicesListener;

    invoke-interface {v0}, Lcom/miniclip/nativeJNI/GooglePlayServices$GooglePlayServicesListener;->onSignInFailed()V

    .line 404
    :cond_0
    :goto_0
    return-void

    .line 398
    :cond_1
    const-string v0, "onConnectionFailed: since user initiated sign-in, trying to resolve problem."

    invoke-virtual {p0, v0}, Lcom/miniclip/nativeJNI/GooglePlayServices;->debugLog(Ljava/lang/String;)V

    .line 403
    invoke-virtual {p0}, Lcom/miniclip/nativeJNI/GooglePlayServices;->resolveConnectionResult()V

    goto :goto_0
.end method

.method public onConnectionSuspended(I)V
    .locals 1
    .param p1, "cause"    # I

    .prologue
    .line 559
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 560
    invoke-virtual {p0}, Lcom/miniclip/nativeJNI/GooglePlayServices;->onDisconnected()V

    .line 567
    :goto_0
    return-void

    .line 565
    :cond_0
    sget-object v0, Lcom/miniclip/nativeJNI/GooglePlayServices;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    goto :goto_0
.end method

.method public onDisconnected()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 550
    const-string v0, "onDisconnected."

    invoke-virtual {p0, v0}, Lcom/miniclip/nativeJNI/GooglePlayServices;->debugLog(Ljava/lang/String;)V

    .line 551
    iput-object v2, p0, Lcom/miniclip/nativeJNI/GooglePlayServices;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    .line 552
    iput-boolean v1, p0, Lcom/miniclip/nativeJNI/GooglePlayServices;->mSignedIn:Z

    .line 553
    iput-object v2, p0, Lcom/miniclip/nativeJNI/GooglePlayServices;->mInvitationId:Ljava/lang/String;

    .line 554
    iput-boolean v1, p0, Lcom/miniclip/nativeJNI/GooglePlayServices;->mConnectedClient:Z

    .line 555
    iget-object v0, p0, Lcom/miniclip/nativeJNI/GooglePlayServices;->mListener:Lcom/miniclip/nativeJNI/GooglePlayServices$GooglePlayServicesListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miniclip/nativeJNI/GooglePlayServices;->mListener:Lcom/miniclip/nativeJNI/GooglePlayServices$GooglePlayServicesListener;

    invoke-interface {v0}, Lcom/miniclip/nativeJNI/GooglePlayServices$GooglePlayServicesListener;->onSignInFailed()V

    .line 556
    :cond_0
    return-void
.end method

.method public onPeopleLoaded(Lcom/google/android/gms/plus/People$LoadPeopleResult;)V
    .locals 8
    .param p1, "loadPeopleResult"    # Lcom/google/android/gms/plus/People$LoadPeopleResult;

    .prologue
    .line 820
    invoke-interface {p1}, Lcom/google/android/gms/plus/People$LoadPeopleResult;->getPersonBuffer()Lcom/google/android/gms/plus/model/people/PersonBuffer;

    move-result-object v4

    .line 822
    .local v4, "personBuffer":Lcom/google/android/gms/plus/model/people/PersonBuffer;
    invoke-interface {p1}, Lcom/google/android/gms/plus/People$LoadPeopleResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 878
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error when listing people: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p1}, Lcom/google/android/gms/plus/People$LoadPeopleResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/miniclip/nativeJNI/GooglePlayServices;->debugLog(Ljava/lang/String;)V

    .line 881
    :goto_0
    return-void

    .line 825
    :sswitch_0
    :try_start_0
    invoke-virtual {v4}, Lcom/google/android/gms/plus/model/people/PersonBuffer;->getCount()I

    move-result v0

    .line 826
    .local v0, "count":I
    const-string v5, ""

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "count : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_0

    .line 828
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 831
    .local v3, "person":Lorg/json/JSONObject;
    :try_start_1
    const-string v5, "id"

    invoke-virtual {v4, v2}, Lcom/google/android/gms/plus/model/people/PersonBuffer;->get(I)Lcom/google/android/gms/plus/model/people/Person;

    move-result-object v6

    invoke-interface {v6}, Lcom/google/android/gms/plus/model/people/Person;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 832
    const-string v5, "name"

    invoke-virtual {v4, v2}, Lcom/google/android/gms/plus/model/people/PersonBuffer;->get(I)Lcom/google/android/gms/plus/model/people/Person;

    move-result-object v6

    invoke-interface {v6}, Lcom/google/android/gms/plus/model/people/Person;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 833
    const-string v5, "url"

    invoke-virtual {v4, v2}, Lcom/google/android/gms/plus/model/people/PersonBuffer;->get(I)Lcom/google/android/gms/plus/model/people/Person;

    move-result-object v6

    invoke-interface {v6}, Lcom/google/android/gms/plus/model/people/Person;->getImage()Lcom/google/android/gms/plus/model/people/Person$Image;

    move-result-object v6

    invoke-interface {v6}, Lcom/google/android/gms/plus/model/people/Person$Image;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/miniclip/nativeJNI/GooglePlayServices;->deparameterize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 841
    :goto_2
    :try_start_2
    sget-object v5, Lcom/miniclip/nativeJNI/GooglePlayServices;->people:Lorg/json/JSONObject;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 846
    :goto_3
    :try_start_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "people are:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4, v2}, Lcom/google/android/gms/plus/model/people/PersonBuffer;->get(I)Lcom/google/android/gms/plus/model/people/Person;

    move-result-object v6

    invoke-interface {v6}, Lcom/google/android/gms/plus/model/people/Person;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 847
    invoke-virtual {v4, v2}, Lcom/google/android/gms/plus/model/people/PersonBuffer;->get(I)Lcom/google/android/gms/plus/model/people/Person;

    move-result-object v6

    invoke-interface {v6}, Lcom/google/android/gms/plus/model/people/Person;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " isPlusUser : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 848
    invoke-virtual {v4, v2}, Lcom/google/android/gms/plus/model/people/PersonBuffer;->get(I)Lcom/google/android/gms/plus/model/people/Person;

    move-result-object v6

    invoke-interface {v6}, Lcom/google/android/gms/plus/model/people/Person;->isPlusUser()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " isVerified : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 850
    invoke-virtual {v4, v2}, Lcom/google/android/gms/plus/model/people/PersonBuffer;->get(I)Lcom/google/android/gms/plus/model/people/Person;

    move-result-object v6

    invoke-interface {v6}, Lcom/google/android/gms/plus/model/people/Person;->isVerified()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " hasCircledByCount : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 852
    invoke-virtual {v4, v2}, Lcom/google/android/gms/plus/model/people/PersonBuffer;->get(I)Lcom/google/android/gms/plus/model/people/Person;

    move-result-object v6

    invoke-interface {v6}, Lcom/google/android/gms/plus/model/people/Person;->hasCircledByCount()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " getObjectType : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 854
    invoke-virtual {v4, v2}, Lcom/google/android/gms/plus/model/people/PersonBuffer;->get(I)Lcom/google/android/gms/plus/model/people/Person;

    move-result-object v6

    invoke-interface {v6}, Lcom/google/android/gms/plus/model/people/Person;->getObjectType()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "Image : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 856
    invoke-virtual {v4, v2}, Lcom/google/android/gms/plus/model/people/PersonBuffer;->get(I)Lcom/google/android/gms/plus/model/people/Person;

    move-result-object v6

    invoke-interface {v6}, Lcom/google/android/gms/plus/model/people/Person;->getImage()Lcom/google/android/gms/plus/model/people/Person$Image;

    move-result-object v6

    invoke-interface {v6}, Lcom/google/android/gms/plus/model/people/Person$Image;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/miniclip/nativeJNI/GooglePlayServices;->deparameterize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 846
    invoke-virtual {p0, v5}, Lcom/miniclip/nativeJNI/GooglePlayServices;->debugLog(Ljava/lang/String;)V

    .line 827
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 836
    :catch_0
    move-exception v1

    .line 838
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_2

    .line 860
    .end local v0    # "count":I
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v2    # "i":I
    .end local v3    # "person":Lorg/json/JSONObject;
    :catchall_0
    move-exception v5

    invoke-virtual {v4}, Lcom/google/android/gms/plus/model/people/PersonBuffer;->close()V

    throw v5

    .line 842
    .restart local v0    # "count":I
    .restart local v2    # "i":I
    .restart local v3    # "person":Lorg/json/JSONObject;
    :catch_1
    move-exception v1

    .line 844
    .restart local v1    # "e":Lorg/json/JSONException;
    :try_start_4
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_3

    .line 860
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v3    # "person":Lorg/json/JSONObject;
    :cond_0
    invoke-virtual {v4}, Lcom/google/android/gms/plus/model/people/PersonBuffer;->close()V

    .line 862
    sget-object v5, Lcom/miniclip/nativeJNI/GooglePlayServices;->mActivity:Lcom/miniclip/eightballpool/EightBallPoolGoogleBaseActivity;

    sget-object v6, Lcom/miniclip/framework/ThreadingContext;->GlThread:Lcom/miniclip/framework/ThreadingContext;

    new-instance v7, Lcom/miniclip/nativeJNI/GooglePlayServices$8;

    invoke-direct {v7, p0}, Lcom/miniclip/nativeJNI/GooglePlayServices$8;-><init>(Lcom/miniclip/nativeJNI/GooglePlayServices;)V

    invoke-virtual {v5, v6, v7}, Lcom/miniclip/eightballpool/EightBallPoolGoogleBaseActivity;->queueEvent(Lcom/miniclip/framework/ThreadingContext;Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 873
    .end local v0    # "count":I
    .end local v2    # "i":I
    :sswitch_1
    sget-object v5, Lcom/miniclip/nativeJNI/GooglePlayServices;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v5}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    .line 874
    sget-object v5, Lcom/miniclip/nativeJNI/GooglePlayServices;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v5}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    goto/16 :goto_0

    .line 822
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x4 -> :sswitch_1
    .end sparse-switch
.end method

.method public reconnectClients()V
    .locals 2

    .prologue
    .line 275
    iget-object v0, p0, Lcom/miniclip/nativeJNI/GooglePlayServices;->mConnectionProgressDialog:Landroid/app/ProgressDialog;

    const-string v1, "Signing in with Google..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 276
    iget-object v0, p0, Lcom/miniclip/nativeJNI/GooglePlayServices;->mConnectionProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 278
    invoke-virtual {p0}, Lcom/miniclip/nativeJNI/GooglePlayServices;->startConnections()V

    .line 289
    return-void
.end method

.method resolveConnectionResult()V
    .locals 4

    .prologue
    .line 412
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resolveConnectionResult: trying to resolve result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miniclip/nativeJNI/GooglePlayServices;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/miniclip/nativeJNI/GooglePlayServices;->debugLog(Ljava/lang/String;)V

    .line 413
    iget-object v1, p0, Lcom/miniclip/nativeJNI/GooglePlayServices;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v1}, Lcom/google/android/gms/common/ConnectionResult;->hasResolution()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 415
    iget-object v1, p0, Lcom/miniclip/nativeJNI/GooglePlayServices;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v1}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 416
    sget-object v1, Lcom/miniclip/nativeJNI/GooglePlayServices;->mActivity:Lcom/miniclip/eightballpool/EightBallPoolGoogleBaseActivity;

    sget-object v2, Lcom/miniclip/framework/ThreadingContext;->GlThread:Lcom/miniclip/framework/ThreadingContext;

    new-instance v3, Lcom/miniclip/nativeJNI/GooglePlayServices$4;

    invoke-direct {v3, p0}, Lcom/miniclip/nativeJNI/GooglePlayServices$4;-><init>(Lcom/miniclip/nativeJNI/GooglePlayServices;)V

    invoke-virtual {v1, v2, v3}, Lcom/miniclip/eightballpool/EightBallPoolGoogleBaseActivity;->queueEvent(Lcom/miniclip/framework/ThreadingContext;Ljava/lang/Runnable;)V

    .line 425
    :cond_0
    const-string v1, "result has resolution. Starting it."

    invoke-virtual {p0, v1}, Lcom/miniclip/nativeJNI/GooglePlayServices;->debugLog(Ljava/lang/String;)V

    .line 428
    :try_start_0
    const-string v1, "trying to resolve"

    invoke-virtual {p0, v1}, Lcom/miniclip/nativeJNI/GooglePlayServices;->debugLog(Ljava/lang/String;)V

    .line 429
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/miniclip/nativeJNI/GooglePlayServices;->mExpectingActivityResult:Z

    .line 430
    iget-object v1, p0, Lcom/miniclip/nativeJNI/GooglePlayServices;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    sget-object v2, Lcom/miniclip/nativeJNI/GooglePlayServices;->mActivity:Lcom/miniclip/eightballpool/EightBallPoolGoogleBaseActivity;

    const/16 v3, 0x2329

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/common/ConnectionResult;->startResolutionForResult(Landroid/app/Activity;I)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 443
    :goto_0
    return-void

    .line 431
    :catch_0
    move-exception v0

    .line 434
    .local v0, "e":Landroid/content/IntentSender$SendIntentException;
    const-string v1, "SendIntentException."

    invoke-virtual {p0, v1}, Lcom/miniclip/nativeJNI/GooglePlayServices;->debugLog(Ljava/lang/String;)V

    .line 435
    invoke-virtual {p0}, Lcom/miniclip/nativeJNI/GooglePlayServices;->connectCurrentClient()V

    goto :goto_0

    .line 440
    .end local v0    # "e":Landroid/content/IntentSender$SendIntentException;
    :cond_1
    const-string v1, "resolveConnectionResult: result has no resolution. Giving up."

    invoke-virtual {p0, v1}, Lcom/miniclip/nativeJNI/GooglePlayServices;->debugLog(Ljava/lang/String;)V

    .line 441
    invoke-virtual {p0}, Lcom/miniclip/nativeJNI/GooglePlayServices;->giveUp()V

    goto :goto_0
.end method

.method public setup(Lcom/miniclip/nativeJNI/GooglePlayServices$GooglePlayServicesListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/miniclip/nativeJNI/GooglePlayServices$GooglePlayServicesListener;

    .prologue
    const/4 v0, 0x1

    .line 190
    invoke-virtual {p0, p1, v0, v0}, Lcom/miniclip/nativeJNI/GooglePlayServices;->setup(Lcom/miniclip/nativeJNI/GooglePlayServices$GooglePlayServicesListener;ZZ)V

    .line 191
    return-void
.end method

.method public setup(Lcom/miniclip/nativeJNI/GooglePlayServices$GooglePlayServicesListener;ZZ)V
    .locals 6
    .param p1, "listener"    # Lcom/miniclip/nativeJNI/GooglePlayServices$GooglePlayServicesListener;
    .param p2, "useGames"    # Z
    .param p3, "usePlus"    # Z

    .prologue
    const/4 v5, 0x0

    .line 194
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    sput-object v1, Lcom/miniclip/nativeJNI/GooglePlayServices;->people:Lorg/json/JSONObject;

    .line 195
    const-string v1, "tagg"

    const-string v2, "tagg setting up"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iput-object p1, p0, Lcom/miniclip/nativeJNI/GooglePlayServices;->mListener:Lcom/miniclip/nativeJNI/GooglePlayServices$GooglePlayServicesListener;

    .line 197
    iput-boolean p2, p0, Lcom/miniclip/nativeJNI/GooglePlayServices;->mUseGames:Z

    .line 198
    iput-boolean p3, p0, Lcom/miniclip/nativeJNI/GooglePlayServices;->mUsePlus:Z

    .line 199
    new-instance v1, Landroid/app/ProgressDialog;

    sget-object v2, Lcom/miniclip/nativeJNI/GooglePlayServices;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/miniclip/nativeJNI/GooglePlayServices;->mConnectionProgressDialog:Landroid/app/ProgressDialog;

    .line 200
    iget-object v1, p0, Lcom/miniclip/nativeJNI/GooglePlayServices;->mConnectionProgressDialog:Landroid/app/ProgressDialog;

    const-string v2, "Signing in with Google..."

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 201
    iget-object v1, p0, Lcom/miniclip/nativeJNI/GooglePlayServices;->mConnectionProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v5}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 203
    new-instance v1, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    sget-object v2, Lcom/miniclip/nativeJNI/GooglePlayServices;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    .line 204
    invoke-virtual {v1, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v1

    .line 205
    invoke-virtual {v1, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addOnConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    .line 207
    .local v0, "builder":Lcom/google/android/gms/common/api/GoogleApiClient$Builder;
    if-eqz p2, :cond_0

    .line 208
    const-string v1, "onCreate: creating GamesClient"

    invoke-virtual {p0, v1}, Lcom/miniclip/nativeJNI/GooglePlayServices;->debugLog(Ljava/lang/String;)V

    .line 209
    sget-object v1, Lcom/google/android/gms/games/Games;->API:Lcom/google/android/gms/common/api/Api;

    invoke-static {}, Lcom/google/android/gms/games/Games$GamesOptions;->builder()Lcom/google/android/gms/games/Games$GamesOptions$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->build()Lcom/google/android/gms/games/Games$GamesOptions;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions$HasOptions;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/games/Games;->SCOPE_GAMES:Lcom/google/android/gms/common/api/Scope;

    .line 210
    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addScope(Lcom/google/android/gms/common/api/Scope;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v1

    const/16 v2, 0x31

    .line 211
    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->setGravityForPopups(I)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    .line 214
    :cond_0
    if-eqz p3, :cond_1

    .line 215
    const-string v1, "onCreate: creating GamesPlusClient"

    invoke-virtual {p0, v1}, Lcom/miniclip/nativeJNI/GooglePlayServices;->debugLog(Ljava/lang/String;)V

    .line 216
    sget-object v1, Lcom/google/android/gms/plus/Plus;->API:Lcom/google/android/gms/common/api/Api;

    .line 217
    invoke-static {}, Lcom/google/android/gms/plus/Plus$PlusOptions;->builder()Lcom/google/android/gms/plus/Plus$PlusOptions$Builder;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "http://schemas.google.com/AddActivity"

    aput-object v4, v3, v5

    .line 218
    invoke-virtual {v2, v3}, Lcom/google/android/gms/plus/Plus$PlusOptions$Builder;->addActivityTypes([Ljava/lang/String;)Lcom/google/android/gms/plus/Plus$PlusOptions$Builder;

    move-result-object v2

    .line 219
    invoke-virtual {v2}, Lcom/google/android/gms/plus/Plus$PlusOptions$Builder;->build()Lcom/google/android/gms/plus/Plus$PlusOptions;

    move-result-object v2

    .line 216
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions$HasOptions;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/plus/Plus;->SCOPE_PLUS_LOGIN:Lcom/google/android/gms/common/api/Scope;

    .line 220
    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addScope(Lcom/google/android/gms/common/api/Scope;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/plus/Plus;->SCOPE_PLUS_PROFILE:Lcom/google/android/gms/common/api/Scope;

    .line 221
    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addScope(Lcom/google/android/gms/common/api/Scope;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/common/api/Scope;

    const-string v3, "https://www.googleapis.com/auth/userinfo.email"

    invoke-direct {v2, v3}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    .line 222
    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addScope(Lcom/google/android/gms/common/api/Scope;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    .line 225
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    sput-object v1, Lcom/miniclip/nativeJNI/GooglePlayServices;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 226
    return-void
.end method

.method public share(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "delegate"    # I

    .prologue
    const/4 v5, 0x0

    .line 779
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tagg sharing type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " text "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " url "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/miniclip/nativeJNI/GooglePlayServices;->debugLog(Ljava/lang/String;)V

    .line 781
    invoke-static {}, Lcom/miniclip/nativeJNI/GooglePlayServices;->canShare()Z

    move-result v3

    if-nez v3, :cond_0

    .line 782
    sget-object v3, Lcom/miniclip/nativeJNI/GooglePlayServices;->mActivity:Lcom/miniclip/eightballpool/EightBallPoolGoogleBaseActivity;

    sget-object v4, Lcom/miniclip/framework/ThreadingContext;->GlThread:Lcom/miniclip/framework/ThreadingContext;

    new-instance v5, Lcom/miniclip/nativeJNI/GooglePlayServices$6;

    invoke-direct {v5, p0, p4}, Lcom/miniclip/nativeJNI/GooglePlayServices$6;-><init>(Lcom/miniclip/nativeJNI/GooglePlayServices;I)V

    invoke-virtual {v3, v4, v5}, Lcom/miniclip/eightballpool/EightBallPoolGoogleBaseActivity;->queueEvent(Lcom/miniclip/framework/ThreadingContext;Ljava/lang/Runnable;)V

    .line 817
    :goto_0
    return-void

    .line 791
    :cond_0
    iput p4, p0, Lcom/miniclip/nativeJNI/GooglePlayServices;->mShareDelegate:I

    .line 793
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 796
    .local v2, "uri":Landroid/net/Uri;
    new-instance v0, Lcom/google/android/gms/plus/PlusShare$Builder;

    sget-object v3, Lcom/miniclip/nativeJNI/GooglePlayServices;->mActivity:Lcom/miniclip/eightballpool/EightBallPoolGoogleBaseActivity;

    invoke-direct {v0, v3}, Lcom/google/android/gms/plus/PlusShare$Builder;-><init>(Landroid/app/Activity;)V

    .line 799
    .local v0, "builder":Lcom/google/android/gms/plus/PlusShare$Builder;
    const-string v3, "PLAY"

    invoke-virtual {v0, v3, v2, p3}, Lcom/google/android/gms/plus/PlusShare$Builder;->addCallToAction(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)Lcom/google/android/gms/plus/PlusShare$Builder;

    .line 801
    invoke-virtual {v0, p3, v5, v5, v5}, Lcom/google/android/gms/plus/PlusShare$Builder;->setContentDeepLinkId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Lcom/google/android/gms/plus/PlusShare$Builder;

    .line 803
    invoke-virtual {v0, v2}, Lcom/google/android/gms/plus/PlusShare$Builder;->setContentUrl(Landroid/net/Uri;)Lcom/google/android/gms/plus/PlusShare$Builder;

    .line 804
    invoke-virtual {v0, p1}, Lcom/google/android/gms/plus/PlusShare$Builder;->setType(Ljava/lang/String;)Lcom/google/android/gms/plus/PlusShare$Builder;

    .line 805
    invoke-virtual {v0, p2}, Lcom/google/android/gms/plus/PlusShare$Builder;->setText(Ljava/lang/CharSequence;)Lcom/google/android/gms/plus/PlusShare$Builder;

    .line 807
    sget-object v3, Lcom/miniclip/nativeJNI/GooglePlayServices;->mActivity:Lcom/miniclip/eightballpool/EightBallPoolGoogleBaseActivity;

    sget-object v4, Lcom/miniclip/framework/ThreadingContext;->GlThread:Lcom/miniclip/framework/ThreadingContext;

    new-instance v5, Lcom/miniclip/nativeJNI/GooglePlayServices$7;

    invoke-direct {v5, p0}, Lcom/miniclip/nativeJNI/GooglePlayServices$7;-><init>(Lcom/miniclip/nativeJNI/GooglePlayServices;)V

    invoke-virtual {v3, v4, v5}, Lcom/miniclip/eightballpool/EightBallPoolGoogleBaseActivity;->queueEvent(Lcom/miniclip/framework/ThreadingContext;Ljava/lang/Runnable;)V

    .line 814
    invoke-virtual {v0}, Lcom/google/android/gms/plus/PlusShare$Builder;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 816
    .local v1, "shareIntent":Landroid/content/Intent;
    sget-object v3, Lcom/miniclip/nativeJNI/GooglePlayServices;->mActivity:Lcom/miniclip/eightballpool/EightBallPoolGoogleBaseActivity;

    const/16 v4, 0x1f40

    invoke-virtual {v3, v1, v4}, Lcom/miniclip/eightballpool/EightBallPoolGoogleBaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public showAchievements()V
    .locals 4

    .prologue
    .line 761
    invoke-virtual {p0}, Lcom/miniclip/nativeJNI/GooglePlayServices;->isSignedIn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 764
    :try_start_0
    sget-object v1, Lcom/miniclip/nativeJNI/GooglePlayServices;->mActivity:Lcom/miniclip/eightballpool/EightBallPoolGoogleBaseActivity;

    sget-object v2, Lcom/google/android/gms/games/Games;->Achievements:Lcom/google/android/gms/games/achievement/Achievements;

    sget-object v3, Lcom/miniclip/nativeJNI/GooglePlayServices;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v2, v3}, Lcom/google/android/gms/games/achievement/Achievements;->getAchievementsIntent(Lcom/google/android/gms/common/api/GoogleApiClient;)Landroid/content/Intent;

    move-result-object v2

    const/16 v3, 0x232a

    invoke-virtual {v1, v2, v3}, Lcom/miniclip/eightballpool/EightBallPoolGoogleBaseActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 775
    :goto_0
    return-void

    .line 766
    :catch_0
    move-exception v0

    .line 768
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/miniclip/nativeJNI/GooglePlayServices;->debugLog(Ljava/lang/String;)V

    .line 769
    invoke-virtual {p0}, Lcom/miniclip/nativeJNI/GooglePlayServices;->killConnections()V

    .line 770
    invoke-virtual {p0}, Lcom/miniclip/nativeJNI/GooglePlayServices;->reconnectClients()V

    goto :goto_0

    .line 773
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    invoke-virtual {p0}, Lcom/miniclip/nativeJNI/GooglePlayServices;->beginUserInitiatedSignIn()V

    goto :goto_0
.end method

.method public showAlert(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 643
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lcom/miniclip/nativeJNI/GooglePlayServices;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "OK"

    const/4 v2, 0x0

    .line 644
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 645
    return-void
.end method

.method public showLeaderboard(Ljava/lang/String;)V
    .locals 4
    .param p1, "leaderboardId"    # Ljava/lang/String;

    .prologue
    .line 701
    invoke-virtual {p0}, Lcom/miniclip/nativeJNI/GooglePlayServices;->isSignedIn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 704
    :try_start_0
    sget-object v1, Lcom/miniclip/nativeJNI/GooglePlayServices;->mActivity:Lcom/miniclip/eightballpool/EightBallPoolGoogleBaseActivity;

    sget-object v2, Lcom/google/android/gms/games/Games;->Leaderboards:Lcom/google/android/gms/games/leaderboard/Leaderboards;

    sget-object v3, Lcom/miniclip/nativeJNI/GooglePlayServices;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v2, v3, p1}, Lcom/google/android/gms/games/leaderboard/Leaderboards;->getLeaderboardIntent(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const/16 v3, 0x232a

    invoke-virtual {v1, v2, v3}, Lcom/miniclip/eightballpool/EightBallPoolGoogleBaseActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 715
    :goto_0
    return-void

    .line 706
    :catch_0
    move-exception v0

    .line 708
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/miniclip/nativeJNI/GooglePlayServices;->debugLog(Ljava/lang/String;)V

    .line 709
    invoke-virtual {p0}, Lcom/miniclip/nativeJNI/GooglePlayServices;->killConnections()V

    .line 710
    invoke-virtual {p0}, Lcom/miniclip/nativeJNI/GooglePlayServices;->reconnectClients()V

    goto :goto_0

    .line 713
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    invoke-virtual {p0}, Lcom/miniclip/nativeJNI/GooglePlayServices;->beginUserInitiatedSignIn()V

    goto :goto_0
.end method

.method public showLeaderboards()V
    .locals 4

    .prologue
    .line 718
    invoke-virtual {p0}, Lcom/miniclip/nativeJNI/GooglePlayServices;->isSignedIn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 721
    :try_start_0
    sget-object v1, Lcom/miniclip/nativeJNI/GooglePlayServices;->mActivity:Lcom/miniclip/eightballpool/EightBallPoolGoogleBaseActivity;

    sget-object v2, Lcom/google/android/gms/games/Games;->Leaderboards:Lcom/google/android/gms/games/leaderboard/Leaderboards;

    sget-object v3, Lcom/miniclip/nativeJNI/GooglePlayServices;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v2, v3}, Lcom/google/android/gms/games/leaderboard/Leaderboards;->getAllLeaderboardsIntent(Lcom/google/android/gms/common/api/GoogleApiClient;)Landroid/content/Intent;

    move-result-object v2

    const/16 v3, 0x232a

    invoke-virtual {v1, v2, v3}, Lcom/miniclip/eightballpool/EightBallPoolGoogleBaseActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 732
    :goto_0
    return-void

    .line 723
    :catch_0
    move-exception v0

    .line 725
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/miniclip/nativeJNI/GooglePlayServices;->debugLog(Ljava/lang/String;)V

    .line 726
    invoke-virtual {p0}, Lcom/miniclip/nativeJNI/GooglePlayServices;->killConnections()V

    .line 727
    invoke-virtual {p0}, Lcom/miniclip/nativeJNI/GooglePlayServices;->reconnectClients()V

    goto :goto_0

    .line 730
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    invoke-virtual {p0}, Lcom/miniclip/nativeJNI/GooglePlayServices;->beginUserInitiatedSignIn()V

    goto :goto_0
.end method

.method signOut()V
    .locals 2

    .prologue
    .line 670
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miniclip/nativeJNI/GooglePlayServices;->mConnectionResult:Lcom/google/android/gms/common/ConnectionResult;

    .line 671
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miniclip/nativeJNI/GooglePlayServices;->mSignedIn:Z

    .line 673
    sget-object v0, Lcom/miniclip/nativeJNI/GooglePlayServices;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/miniclip/nativeJNI/GooglePlayServices;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 674
    iget-boolean v0, p0, Lcom/miniclip/nativeJNI/GooglePlayServices;->mUsePlus:Z

    if-eqz v0, :cond_0

    .line 675
    sget-object v0, Lcom/google/android/gms/plus/Plus;->AccountApi:Lcom/google/android/gms/plus/Account;

    sget-object v1, Lcom/miniclip/nativeJNI/GooglePlayServices;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0, v1}, Lcom/google/android/gms/plus/Account;->clearDefaultAccount(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    .line 677
    :cond_0
    sget-object v0, Lcom/miniclip/nativeJNI/GooglePlayServices;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    .line 680
    :cond_1
    iget-object v0, p0, Lcom/miniclip/nativeJNI/GooglePlayServices;->mConnectionProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miniclip/nativeJNI/GooglePlayServices;->mConnectionProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 684
    :cond_2
    invoke-virtual {p0}, Lcom/miniclip/nativeJNI/GooglePlayServices;->killConnections()V

    .line 685
    return-void
.end method

.method startConnections()V
    .locals 4

    .prologue
    .line 233
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/miniclip/nativeJNI/GooglePlayServices;->mConnectedClient:Z

    .line 234
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/miniclip/nativeJNI/GooglePlayServices;->mInvitationId:Ljava/lang/String;

    .line 236
    const-string v1, "tagg"

    const-string v2, "tagg connect next"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iget-object v1, p0, Lcom/miniclip/nativeJNI/GooglePlayServices;->mConnectionProgressDialog:Landroid/app/ProgressDialog;

    const-string v2, "Signing in with Google..."

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 238
    iget-object v1, p0, Lcom/miniclip/nativeJNI/GooglePlayServices;->mConnectionProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 241
    :try_start_0
    sget-object v1, Lcom/miniclip/nativeJNI/GooglePlayServices;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v1, :cond_0

    .line 242
    const-string v1, "Connecting GoogleApiClient."

    invoke-virtual {p0, v1}, Lcom/miniclip/nativeJNI/GooglePlayServices;->debugLog(Ljava/lang/String;)V

    .line 249
    invoke-virtual {p0}, Lcom/miniclip/nativeJNI/GooglePlayServices;->connectCurrentClient()V

    .line 256
    :goto_0
    return-void

    .line 245
    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not all clients connected, yet no one is next. C="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/miniclip/nativeJNI/GooglePlayServices;->mConnectedClient:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    :catch_0
    move-exception v0

    .line 252
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/miniclip/nativeJNI/GooglePlayServices;->mDebugTag:Ljava/lang/String;

    const-string v2, "*** EXCEPTION while attempting to connect. Details follow."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 254
    invoke-virtual {p0}, Lcom/miniclip/nativeJNI/GooglePlayServices;->giveUp()V

    goto :goto_0
.end method

.method succeedSignIn()V
    .locals 1

    .prologue
    .line 372
    const-string v0, "All requested clients connected. Sign-in succeeded!"

    invoke-virtual {p0, v0}, Lcom/miniclip/nativeJNI/GooglePlayServices;->debugLog(Ljava/lang/String;)V

    .line 373
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miniclip/nativeJNI/GooglePlayServices;->mSignedIn:Z

    .line 374
    const-string v0, "tagg SIGNED IN"

    invoke-virtual {p0, v0}, Lcom/miniclip/nativeJNI/GooglePlayServices;->debugLog(Ljava/lang/String;)V

    .line 375
    iget-object v0, p0, Lcom/miniclip/nativeJNI/GooglePlayServices;->mConnectionProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 376
    iget-object v0, p0, Lcom/miniclip/nativeJNI/GooglePlayServices;->mListener:Lcom/miniclip/nativeJNI/GooglePlayServices$GooglePlayServicesListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miniclip/nativeJNI/GooglePlayServices;->mListener:Lcom/miniclip/nativeJNI/GooglePlayServices$GooglePlayServicesListener;

    invoke-interface {v0}, Lcom/miniclip/nativeJNI/GooglePlayServices$GooglePlayServicesListener;->onSignInSucceeded()V

    .line 377
    :cond_0
    return-void
.end method

.method public unlockAchievement(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "achievementId"    # Ljava/lang/String;
    .param p2, "userData"    # Ljava/lang/Object;

    .prologue
    .line 748
    invoke-virtual {p0}, Lcom/miniclip/nativeJNI/GooglePlayServices;->isSignedIn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 751
    :try_start_0
    sget-object v1, Lcom/google/android/gms/games/Games;->Achievements:Lcom/google/android/gms/games/achievement/Achievements;

    sget-object v2, Lcom/miniclip/nativeJNI/GooglePlayServices;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v1, v2, p1}, Lcom/google/android/gms/games/achievement/Achievements;->unlock(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 758
    :cond_0
    :goto_0
    return-void

    .line 753
    :catch_0
    move-exception v0

    .line 755
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/miniclip/nativeJNI/GooglePlayServices;->debugLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateAchievement(Ljava/lang/String;FLjava/lang/Object;)V
    .locals 4
    .param p1, "achievementId"    # Ljava/lang/String;
    .param p2, "progressValue"    # F
    .param p3, "userData"    # Ljava/lang/Object;

    .prologue
    .line 735
    invoke-virtual {p0}, Lcom/miniclip/nativeJNI/GooglePlayServices;->isSignedIn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 738
    :try_start_0
    sget-object v1, Lcom/google/android/gms/games/Games;->Achievements:Lcom/google/android/gms/games/achievement/Achievements;

    sget-object v2, Lcom/miniclip/nativeJNI/GooglePlayServices;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    float-to-int v3, p2

    invoke-interface {v1, v2, p1, v3}, Lcom/google/android/gms/games/achievement/Achievements;->increment(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 745
    :cond_0
    :goto_0
    return-void

    .line 740
    :catch_0
    move-exception v0

    .line 742
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/miniclip/nativeJNI/GooglePlayServices;->debugLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateScore(Ljava/lang/String;JLjava/lang/Object;)V
    .locals 4
    .param p1, "leaderboardId"    # Ljava/lang/String;
    .param p2, "scoreValue"    # J
    .param p4, "userData"    # Ljava/lang/Object;

    .prologue
    .line 688
    invoke-virtual {p0}, Lcom/miniclip/nativeJNI/GooglePlayServices;->isSignedIn()Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v1, p2, v2

    if-ltz v1, :cond_0

    .line 691
    :try_start_0
    sget-object v1, Lcom/google/android/gms/games/Games;->Leaderboards:Lcom/google/android/gms/games/leaderboard/Leaderboards;

    sget-object v2, Lcom/miniclip/nativeJNI/GooglePlayServices;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v1, v2, p1, p2, p3}, Lcom/google/android/gms/games/leaderboard/Leaderboards;->submitScore(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 698
    :cond_0
    :goto_0
    return-void

    .line 693
    :catch_0
    move-exception v0

    .line 695
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/miniclip/nativeJNI/GooglePlayServices;->debugLog(Ljava/lang/String;)V

    goto :goto_0
.end method
