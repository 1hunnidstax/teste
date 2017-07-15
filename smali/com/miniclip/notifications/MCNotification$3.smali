.class final Lcom/miniclip/notifications/MCNotification$3;
.super Ljava/lang/Object;
.source "MCNotification.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniclip/notifications/MCNotification;->signalReceivedPushNotification(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$notificationJSON:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 213
    iput-object p1, p0, Lcom/miniclip/notifications/MCNotification$3;->val$notificationJSON:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/miniclip/notifications/MCNotification$3;->val$notificationJSON:Ljava/lang/String;

    # invokes: Lcom/miniclip/notifications/MCNotification;->onReceivedPushNotification(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/miniclip/notifications/MCNotification;->access$600(Ljava/lang/String;)V

    .line 216
    const/4 v0, 0x0

    # setter for: Lcom/miniclip/notifications/MCNotification;->pushNotificationData:Ljava/lang/String;
    invoke-static {v0}, Lcom/miniclip/notifications/MCNotification;->access$502(Ljava/lang/String;)Ljava/lang/String;

    .line 217
    return-void
.end method
