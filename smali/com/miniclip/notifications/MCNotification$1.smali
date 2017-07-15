.class final Lcom/miniclip/notifications/MCNotification$1;
.super Lcom/miniclip/framework/AbstractActivityListener;
.source "MCNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniclip/notifications/MCNotification;->init(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/miniclip/framework/AbstractActivityListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 62
    # invokes: Lcom/miniclip/notifications/MCNotification;->processNotification(Landroid/content/Intent;)V
    invoke-static {p1}, Lcom/miniclip/notifications/MCNotification;->access$200(Landroid/content/Intent;)V

    .line 63
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 57
    # invokes: Lcom/miniclip/notifications/MCNotification;->signalNotifications()V
    invoke-static {}, Lcom/miniclip/notifications/MCNotification;->access$100()V

    .line 58
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x1

    # setter for: Lcom/miniclip/notifications/MCNotification;->isActive:Z
    invoke-static {v0}, Lcom/miniclip/notifications/MCNotification;->access$002(Z)Z

    .line 48
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    # setter for: Lcom/miniclip/notifications/MCNotification;->isActive:Z
    invoke-static {v0}, Lcom/miniclip/notifications/MCNotification;->access$002(Z)Z

    .line 53
    return-void
.end method
