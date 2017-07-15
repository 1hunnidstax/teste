.class Lcom/miniclip/nativeJNI/GooglePlayServices$1;
.super Ljava/lang/Object;
.source "GooglePlayServices.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniclip/nativeJNI/GooglePlayServices;-><init>(Lcom/miniclip/eightballpool/EightBallPoolGoogleBaseActivity;)V
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
    .line 167
    iput-object p1, p0, Lcom/miniclip/nativeJNI/GooglePlayServices$1;->this$0:Lcom/miniclip/nativeJNI/GooglePlayServices;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 171
    const/4 v0, 0x0

    .line 175
    .local v0, "adInfo":Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    :try_start_0
    sget-object v1, Lcom/miniclip/nativeJNI/GooglePlayServices;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v0

    .line 176
    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/miniclip/nativeJNI/GooglePlayServices;->mAdvertisingID:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    :goto_0
    return-void

    .line 178
    :catch_0
    move-exception v1

    goto :goto_0
.end method
