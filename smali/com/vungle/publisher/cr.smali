.class public abstract Lcom/vungle/publisher/cr;
.super Lcom/vungle/publisher/dl;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/cr$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P:",
        "Lcom/vungle/publisher/cp",
        "<*TP;*>;>",
        "Lcom/vungle/publisher/dl",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/vungle/publisher/cp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TP;"
        }
    .end annotation
.end field

.field public b:Lcom/vungle/publisher/ji;

.field public c:J

.field public d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/vungle/publisher/dl;-><init>()V

    return-void
.end method

.method private e()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/vungle/publisher/cr;->a:Lcom/vungle/publisher/cp;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/vungle/publisher/cr;->a:Lcom/vungle/publisher/cp;

    invoke-virtual {v0}, Lcom/vungle/publisher/cp;->w()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    goto :goto_0
.end method


# virtual methods
.method protected final a(Z)Landroid/content/ContentValues;
    .locals 4

    .prologue
    .line 50
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 51
    if-eqz p1, :cond_0

    .line 52
    const-string v1, "insert_timestamp_millis"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/vungle/publisher/cr;->c:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 53
    const-string v1, "play_id"

    invoke-direct {p0}, Lcom/vungle/publisher/cr;->e()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 54
    const-string v1, "event"

    iget-object v2, p0, Lcom/vungle/publisher/cr;->b:Lcom/vungle/publisher/ji;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const-string v1, "value"

    iget-object v2, p0, Lcom/vungle/publisher/cr;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    :cond_0
    return-object v0
.end method

.method protected final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    const-string v0, "ad_report_event"

    return-object v0
.end method

.method protected final m()Ljava/lang/StringBuilder;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 72
    invoke-super {p0}, Lcom/vungle/publisher/dl;->m()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 73
    const-string v1, "play_id"

    invoke-direct {p0}, Lcom/vungle/publisher/cr;->e()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2, v4}, Lcom/vungle/publisher/dl;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 74
    const-string v1, "event"

    iget-object v2, p0, Lcom/vungle/publisher/cr;->b:Lcom/vungle/publisher/ji;

    invoke-static {v0, v1, v2, v4}, Lcom/vungle/publisher/dl;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 75
    const-string v1, "insert_timestamp_millis"

    iget-wide v2, p0, Lcom/vungle/publisher/cr;->c:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2, v4}, Lcom/vungle/publisher/dl;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 76
    const-string v1, "value"

    iget-object v2, p0, Lcom/vungle/publisher/cr;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2, v4}, Lcom/vungle/publisher/dl;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 77
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/vungle/publisher/cr;->e:Ljava/lang/String;

    .line 64
    if-nez v0, :cond_0

    .line 65
    invoke-super {p0}, Lcom/vungle/publisher/dl;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/cr;->e:Ljava/lang/String;

    .line 67
    :cond_0
    return-object v0
.end method
