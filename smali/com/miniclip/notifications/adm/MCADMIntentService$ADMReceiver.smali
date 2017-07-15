.class public Lcom/miniclip/notifications/adm/MCADMIntentService$ADMReceiver;
.super Lcom/amazon/device/messaging/ADMMessageReceiver;
.source "MCADMIntentService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miniclip/notifications/adm/MCADMIntentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ADMReceiver"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/miniclip/notifications/adm/MCADMIntentService;

    invoke-direct {p0, v0}, Lcom/amazon/device/messaging/ADMMessageReceiver;-><init>(Ljava/lang/Class;)V

    .line 43
    return-void
.end method
