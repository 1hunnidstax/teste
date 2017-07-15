.class public Lcom/miniclip/notifications/MCNotificationCompatManager;
.super Landroid/content/BroadcastReceiver;
.source "MCNotificationCompatManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miniclip/notifications/MCNotificationCompatManager$NotificationEntry;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field static mNotificationTable:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miniclip/notifications/MCNotificationCompatManager$NotificationEntry;",
            ">;>;"
        }
    .end annotation
.end field

.field static mUnstackableNotifications:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/miniclip/notifications/MCNotificationCompatManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miniclip/notifications/MCNotificationCompatManager;->TAG:Ljava/lang/String;

    .line 20
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/miniclip/notifications/MCNotificationCompatManager;->mNotificationTable:Ljava/util/Hashtable;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miniclip/notifications/MCNotificationCompatManager;->mUnstackableNotifications:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static addNotification(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "id"    # I
    .param p1, "group"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;

    .prologue
    .line 120
    sget-object v1, Lcom/miniclip/notifications/MCNotificationCompatManager;->mNotificationTable:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 127
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miniclip/notifications/MCNotificationCompatManager$NotificationEntry;>;"
    :goto_0
    new-instance v1, Lcom/miniclip/notifications/MCNotificationCompatManager$NotificationEntry;

    invoke-direct {v1, p0, p2, p3}, Lcom/miniclip/notifications/MCNotificationCompatManager$NotificationEntry;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    sget-object v1, Lcom/miniclip/notifications/MCNotificationCompatManager;->mNotificationTable:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    return-void

    .line 125
    .end local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miniclip/notifications/MCNotificationCompatManager$NotificationEntry;>;"
    :cond_0
    sget-object v1, Lcom/miniclip/notifications/MCNotificationCompatManager;->mNotificationTable:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .restart local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miniclip/notifications/MCNotificationCompatManager$NotificationEntry;>;"
    goto :goto_0
.end method

.method public static addUnstackableGroup(Ljava/lang/String;)V
    .locals 1
    .param p0, "notificationGroup"    # Ljava/lang/String;

    .prologue
    .line 31
    sget-object v0, Lcom/miniclip/notifications/MCNotificationCompatManager;->mUnstackableNotifications:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    :goto_0
    return-void

    .line 33
    :cond_0
    sget-object v0, Lcom/miniclip/notifications/MCNotificationCompatManager;->mUnstackableNotifications:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static clearUnstackableGroup()V
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/miniclip/notifications/MCNotificationCompatManager;->mUnstackableNotifications:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 44
    return-void
.end method

.method public static createNotification(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JLandroid/app/PendingIntent;ZILjava/util/List;)Landroid/app/Notification;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I
    .param p2, "groupID"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "resourceId"    # I
    .param p6, "bigContentTitle"    # Ljava/lang/String;
    .param p7, "summary"    # Ljava/lang/String;
    .param p8, "timeInMillis"    # J
    .param p10, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p11, "autoCancel"    # Z
    .param p12, "priority"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Landroid/app/PendingIntent;",
            "ZI",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/NotificationCompat$Action;",
            ">;)",
            "Landroid/app/Notification;"
        }
    .end annotation

    .prologue
    .line 53
    .local p13, "actions":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/app/NotificationCompat$Action;>;"
    invoke-static {p2}, Lcom/miniclip/notifications/MCNotificationCompatManager;->getNotificationsOfGroup(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 54
    .local v5, "notifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miniclip/notifications/MCNotificationCompatManager$NotificationEntry;>;"
    const-string v8, "%%"

    const-string v9, "%"

    invoke-virtual {p4, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p4

    .line 55
    const-string v8, "%%"

    const-string v9, "%"

    move-object/from16 v0, p6

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p6

    .line 58
    sget-object v8, Lcom/miniclip/notifications/MCNotificationCompatManager;->mUnstackableNotifications:Ljava/util/ArrayList;

    invoke-virtual {v8, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 60
    :cond_0
    new-instance v8, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v8, p0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 61
    invoke-virtual {v8, p3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v8

    .line 62
    invoke-virtual {v8, p4}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v8

    .line 63
    invoke-virtual {v8, p5}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v8

    .line 64
    invoke-virtual {v8, p2}, Landroid/support/v4/app/NotificationCompat$Builder;->setGroup(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v8

    .line 65
    move-wide/from16 v0, p8

    invoke-virtual {v8, v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v8

    .line 66
    move-object/from16 v0, p10

    invoke-virtual {v8, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v8

    .line 67
    move/from16 v0, p11

    invoke-virtual {v8, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v8

    .line 69
    move/from16 v0, p12

    invoke-virtual {v8, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    .line 72
    .local v2, "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    if-eqz p13, :cond_1

    .line 73
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-interface/range {p13 .. p13}, Ljava/util/List;->size()I

    move-result v8

    if-ge v4, v8, :cond_1

    .line 74
    move-object/from16 v0, p13

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/v4/app/NotificationCompat$Action;

    invoke-virtual {v2, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(Landroid/support/v4/app/NotificationCompat$Action;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 73
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 76
    .end local v4    # "i":I
    :cond_1
    invoke-virtual {v2}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    .line 78
    .local v3, "compatNote":Landroid/app/Notification;
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 79
    invoke-static {p1, p2, p3, p4}, Lcom/miniclip/notifications/MCNotificationCompatManager;->addNotification(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    :cond_2
    :goto_1
    return-object v3

    .line 83
    .end local v2    # "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    .end local v3    # "compatNote":Landroid/app/Notification;
    :cond_3
    invoke-static {p1, p2, p3, p4}, Lcom/miniclip/notifications/MCNotificationCompatManager;->addNotification(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    new-instance v7, Landroid/support/v4/app/NotificationCompat$InboxStyle;

    invoke-direct {v7}, Landroid/support/v4/app/NotificationCompat$InboxStyle;-><init>()V

    .line 85
    .local v7, "style":Landroid/support/v4/app/NotificationCompat$InboxStyle;
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v4, v8, -0x1

    .restart local v4    # "i":I
    :goto_2
    if-ltz v4, :cond_4

    .line 87
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/miniclip/notifications/MCNotificationCompatManager$NotificationEntry;

    invoke-virtual {v8}, Lcom/miniclip/notifications/MCNotificationCompatManager$NotificationEntry;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/support/v4/app/NotificationCompat$InboxStyle;->addLine(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$InboxStyle;

    .line 85
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 90
    :cond_4
    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_5

    const/4 v6, 0x1

    .line 92
    .local v6, "setGroupSummary":Z
    :goto_3
    move-object/from16 v0, p6

    invoke-virtual {v7, v0}, Landroid/support/v4/app/NotificationCompat$InboxStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$InboxStyle;

    move-result-object v8

    move-object/from16 v0, p7

    invoke-virtual {v8, v0}, Landroid/support/v4/app/NotificationCompat$InboxStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$InboxStyle;

    .line 94
    new-instance v8, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v8, p0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 95
    invoke-virtual {v8, p3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v8

    .line 96
    invoke-virtual {v8, p4}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v8

    .line 97
    invoke-virtual {v8, p5}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v8

    .line 98
    invoke-virtual {v8, p2}, Landroid/support/v4/app/NotificationCompat$Builder;->setGroup(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v8

    .line 99
    move-wide/from16 v0, p8

    invoke-virtual {v8, v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v8

    .line 100
    move-object/from16 v0, p10

    invoke-virtual {v8, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v8

    .line 101
    move/from16 v0, p11

    invoke-virtual {v8, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v8

    .line 102
    move/from16 v0, p12

    invoke-virtual {v8, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v8

    .line 103
    invoke-virtual {v8, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v8

    .line 104
    invoke-virtual {v8, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setGroupSummary(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v8

    .line 105
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/support/v4/app/NotificationCompat$Builder;->setNumber(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    .line 107
    .restart local v2    # "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    if-eqz p13, :cond_6

    .line 108
    const/4 v4, 0x0

    :goto_4
    invoke-interface/range {p13 .. p13}, Ljava/util/List;->size()I

    move-result v8

    if-ge v4, v8, :cond_6

    .line 109
    move-object/from16 v0, p13

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/v4/app/NotificationCompat$Action;

    invoke-virtual {v2, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(Landroid/support/v4/app/NotificationCompat$Action;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 108
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 90
    .end local v2    # "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    .end local v6    # "setGroupSummary":Z
    :cond_5
    const/4 v6, 0x0

    goto :goto_3

    .line 111
    .restart local v2    # "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    .restart local v6    # "setGroupSummary":Z
    :cond_6
    invoke-virtual {v2}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    .restart local v3    # "compatNote":Landroid/app/Notification;
    goto/16 :goto_1
.end method

.method public static getNotificationsOfGroup(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "group"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miniclip/notifications/MCNotificationCompatManager$NotificationEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 157
    sget-object v0, Lcom/miniclip/notifications/MCNotificationCompatManager;->mNotificationTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 158
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 160
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/miniclip/notifications/MCNotificationCompatManager;->mNotificationTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public static isNotificationStackable(Ljava/lang/String;)Z
    .locals 1
    .param p0, "notificationGroup"    # Ljava/lang/String;

    .prologue
    .line 47
    sget-object v0, Lcom/miniclip/notifications/MCNotificationCompatManager;->mUnstackableNotifications:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static removeAllGroups()V
    .locals 1

    .prologue
    .line 171
    sget-object v0, Lcom/miniclip/notifications/MCNotificationCompatManager;->mNotificationTable:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 172
    return-void
.end method

.method public static removeGroup(Ljava/lang/String;)V
    .locals 1
    .param p0, "group"    # Ljava/lang/String;

    .prologue
    .line 164
    sget-object v0, Lcom/miniclip/notifications/MCNotificationCompatManager;->mNotificationTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 168
    :goto_0
    return-void

    .line 167
    :cond_0
    sget-object v0, Lcom/miniclip/notifications/MCNotificationCompatManager;->mNotificationTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static removeNotification(I)V
    .locals 1
    .param p0, "id"    # I

    .prologue
    .line 134
    sget-object v0, Lcom/miniclip/notifications/MCNotificationCompatManager;->mNotificationTable:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    :cond_0
    return-void
.end method

.method public static removeUnstackableGroup(Ljava/lang/String;)V
    .locals 1
    .param p0, "notificationGroup"    # Ljava/lang/String;

    .prologue
    .line 37
    sget-object v0, Lcom/miniclip/notifications/MCNotificationCompatManager;->mUnstackableNotifications:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 40
    :goto_0
    return-void

    .line 39
    :cond_0
    sget-object v0, Lcom/miniclip/notifications/MCNotificationCompatManager;->mUnstackableNotifications:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static reset()V
    .locals 0

    .prologue
    .line 25
    invoke-static {}, Lcom/miniclip/notifications/MCNotificationCompatManager;->clearUnstackableGroup()V

    .line 26
    invoke-static {}, Lcom/miniclip/notifications/MCNotificationCompatManager;->removeAllGroups()V

    .line 27
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 176
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "deleteNotification"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 179
    :cond_1
    const-string v1, "group"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 181
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "group"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 183
    .local v0, "group":Ljava/lang/String;
    invoke-static {v0}, Lcom/miniclip/notifications/MCNotificationCompatManager;->removeGroup(Ljava/lang/String;)V

    goto :goto_0
.end method
