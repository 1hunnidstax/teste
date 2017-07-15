.class public Lcom/miniclip/notifications/gcm/MCGCMBroadcastReceiver;
.super Lcom/google/android/gcm/GCMBroadcastReceiver;
.source "MCGCMBroadcastReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/google/android/gcm/GCMBroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method protected getGCMIntentServiceClassName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 9
    const-string v0, "com.miniclip.notifications.gcm.MCGCMIntentService"

    return-object v0
.end method
