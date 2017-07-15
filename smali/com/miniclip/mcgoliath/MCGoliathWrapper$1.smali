.class Lcom/miniclip/mcgoliath/MCGoliathWrapper$1;
.super Ljava/lang/Object;
.source "MCGoliathWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniclip/mcgoliath/MCGoliathWrapper;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miniclip/mcgoliath/MCGoliathWrapper;


# direct methods
.method constructor <init>(Lcom/miniclip/mcgoliath/MCGoliathWrapper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miniclip/mcgoliath/MCGoliathWrapper;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/miniclip/mcgoliath/MCGoliathWrapper$1;->this$0:Lcom/miniclip/mcgoliath/MCGoliathWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 88
    const/4 v0, 0x0

    .line 90
    .local v0, "adInfo":Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    :try_start_0
    iget-object v2, p0, Lcom/miniclip/mcgoliath/MCGoliathWrapper$1;->this$0:Lcom/miniclip/mcgoliath/MCGoliathWrapper;

    # getter for: Lcom/miniclip/mcgoliath/MCGoliathWrapper;->context:Landroid/content/Context;
    invoke-static {v2}, Lcom/miniclip/mcgoliath/MCGoliathWrapper;->access$000(Lcom/miniclip/mcgoliath/MCGoliathWrapper;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v0

    .line 91
    iget-object v2, p0, Lcom/miniclip/mcgoliath/MCGoliathWrapper$1;->this$0:Lcom/miniclip/mcgoliath/MCGoliathWrapper;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v3

    # setter for: Lcom/miniclip/mcgoliath/MCGoliathWrapper;->advertisingID:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/miniclip/mcgoliath/MCGoliathWrapper;->access$102(Lcom/miniclip/mcgoliath/MCGoliathWrapper;Ljava/lang/String;)Ljava/lang/String;

    .line 92
    iget-object v2, p0, Lcom/miniclip/mcgoliath/MCGoliathWrapper$1;->this$0:Lcom/miniclip/mcgoliath/MCGoliathWrapper;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result v3

    # setter for: Lcom/miniclip/mcgoliath/MCGoliathWrapper;->isLimitAdTrackingEnabled:Z
    invoke-static {v2, v3}, Lcom/miniclip/mcgoliath/MCGoliathWrapper;->access$202(Lcom/miniclip/mcgoliath/MCGoliathWrapper;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :goto_0
    return-void

    .line 93
    :catch_0
    move-exception v1

    .line 94
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "MCGoliathWrapper"

    const-string v3, "Failed to get advertising info!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object v2, p0, Lcom/miniclip/mcgoliath/MCGoliathWrapper$1;->this$0:Lcom/miniclip/mcgoliath/MCGoliathWrapper;

    const-string v3, ""

    # setter for: Lcom/miniclip/mcgoliath/MCGoliathWrapper;->advertisingID:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/miniclip/mcgoliath/MCGoliathWrapper;->access$102(Lcom/miniclip/mcgoliath/MCGoliathWrapper;Ljava/lang/String;)Ljava/lang/String;

    .line 96
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
