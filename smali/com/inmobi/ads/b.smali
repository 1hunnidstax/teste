.class public Lcom/inmobi/ads/b;
.super Ljava/lang/Object;
.source "AdAsset.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/ads/b$a;
    }
.end annotation


# static fields
.field private static final i:Ljava/lang/String;


# instance fields
.field a:J

.field b:I

.field c:I

.field d:Ljava/lang/String;

.field e:J

.field f:J

.field g:J

.field h:J

.field private j:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/inmobi/ads/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/ads/b;->i:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;IJJJJ)V
    .locals 3
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/inmobi/ads/b;->a:J

    .line 214
    iput p1, p0, Lcom/inmobi/ads/b;->b:I

    .line 215
    iput-object p2, p0, Lcom/inmobi/ads/b;->j:Ljava/lang/String;

    .line 216
    iput-object p3, p0, Lcom/inmobi/ads/b;->d:Ljava/lang/String;

    .line 217
    iput p4, p0, Lcom/inmobi/ads/b;->c:I

    .line 219
    iput-wide p5, p0, Lcom/inmobi/ads/b;->e:J

    .line 220
    iput-wide p7, p0, Lcom/inmobi/ads/b;->f:J

    .line 221
    iput-wide p9, p0, Lcom/inmobi/ads/b;->g:J

    .line 222
    iput-wide p11, p0, Lcom/inmobi/ads/b;->h:J

    .line 223
    return-void
.end method

.method static synthetic f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/inmobi/ads/b;->i:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/inmobi/ads/b;->d:Ljava/lang/String;

    return-object v0
.end method

.method public a(J)V
    .locals 1

    .prologue
    .line 266
    iput-wide p1, p0, Lcom/inmobi/ads/b;->a:J

    .line 267
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/inmobi/ads/b;->j:Ljava/lang/String;

    return-object v0
.end method

.method public c()Z
    .locals 4

    .prologue
    .line 234
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/inmobi/ads/b;->g:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Z
    .locals 2

    .prologue
    .line 238
    invoke-virtual {p0}, Lcom/inmobi/ads/b;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 239
    invoke-virtual {p0}, Lcom/inmobi/ads/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/inmobi/ads/b;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 240
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 241
    :cond_0
    const/4 v0, 0x0

    .line 243
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public e()J
    .locals 2

    .prologue
    .line 262
    iget-wide v0, p0, Lcom/inmobi/ads/b;->a:J

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 248
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    .line 252
    :goto_0
    return v0

    .line 249
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 251
    :cond_2
    check-cast p1, Lcom/inmobi/ads/b;

    .line 252
    iget-object v0, p0, Lcom/inmobi/ads/b;->j:Ljava/lang/String;

    iget-object v1, p1, Lcom/inmobi/ads/b;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/inmobi/ads/b;->j:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
