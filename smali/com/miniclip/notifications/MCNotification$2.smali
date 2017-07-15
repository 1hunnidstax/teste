.class final Lcom/miniclip/notifications/MCNotification$2;
.super Ljava/lang/Object;
.source "MCNotification.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniclip/notifications/MCNotification;->signalNotifications()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 92
    # getter for: Lcom/miniclip/notifications/MCNotification;->localNotificationData:Ljava/lang/String;
    invoke-static {}, Lcom/miniclip/notifications/MCNotification;->access$300()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 93
    # getter for: Lcom/miniclip/notifications/MCNotification;->localNotificationData:Ljava/lang/String;
    invoke-static {}, Lcom/miniclip/notifications/MCNotification;->access$300()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/miniclip/notifications/MCNotification;->onReceivedLocalNotification(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/miniclip/notifications/MCNotification;->access$400(Ljava/lang/String;)V

    .line 94
    # setter for: Lcom/miniclip/notifications/MCNotification;->localNotificationData:Ljava/lang/String;
    invoke-static {v1}, Lcom/miniclip/notifications/MCNotification;->access$302(Ljava/lang/String;)Ljava/lang/String;

    .line 96
    :cond_0
    # getter for: Lcom/miniclip/notifications/MCNotification;->pushNotificationData:Ljava/lang/String;
    invoke-static {}, Lcom/miniclip/notifications/MCNotification;->access$500()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 97
    # getter for: Lcom/miniclip/notifications/MCNotification;->pushNotificationData:Ljava/lang/String;
    invoke-static {}, Lcom/miniclip/notifications/MCNotification;->access$500()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/miniclip/notifications/MCNotification;->onReceivedPushNotification(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/miniclip/notifications/MCNotification;->access$600(Ljava/lang/String;)V

    .line 98
    # setter for: Lcom/miniclip/notifications/MCNotification;->pushNotificationData:Ljava/lang/String;
    invoke-static {v1}, Lcom/miniclip/notifications/MCNotification;->access$502(Ljava/lang/String;)Ljava/lang/String;

    .line 100
    :cond_1
    return-void
.end method
