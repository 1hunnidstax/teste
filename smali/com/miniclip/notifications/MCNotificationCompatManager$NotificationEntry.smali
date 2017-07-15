.class public Lcom/miniclip/notifications/MCNotificationCompatManager$NotificationEntry;
.super Ljava/lang/Object;
.source "MCNotificationCompatManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miniclip/notifications/MCNotificationCompatManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NotificationEntry"
.end annotation


# instance fields
.field id:I

.field message:Ljava/lang/String;

.field title:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;

    .prologue
    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    iput p1, p0, Lcom/miniclip/notifications/MCNotificationCompatManager$NotificationEntry;->id:I

    .line 197
    iput-object p2, p0, Lcom/miniclip/notifications/MCNotificationCompatManager$NotificationEntry;->title:Ljava/lang/String;

    .line 198
    iput-object p3, p0, Lcom/miniclip/notifications/MCNotificationCompatManager$NotificationEntry;->message:Ljava/lang/String;

    .line 199
    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    .prologue
    .line 202
    iget v0, p0, Lcom/miniclip/notifications/MCNotificationCompatManager$NotificationEntry;->id:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/miniclip/notifications/MCNotificationCompatManager$NotificationEntry;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/miniclip/notifications/MCNotificationCompatManager$NotificationEntry;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 206
    iput p1, p0, Lcom/miniclip/notifications/MCNotificationCompatManager$NotificationEntry;->id:I

    .line 207
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 223
    iput-object p1, p0, Lcom/miniclip/notifications/MCNotificationCompatManager$NotificationEntry;->message:Ljava/lang/String;

    .line 224
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 215
    iput-object p1, p0, Lcom/miniclip/notifications/MCNotificationCompatManager$NotificationEntry;->title:Ljava/lang/String;

    .line 216
    return-void
.end method
