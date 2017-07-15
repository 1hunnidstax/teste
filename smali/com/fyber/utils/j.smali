.class public final Lcom/fyber/utils/j;
.super Lcom/fyber/utils/b;
.source "HttpConnectionFiles.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fyber/utils/j$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fyber/utils/b",
        "<",
        "Lcom/fyber/utils/j;",
        "Lcom/fyber/utils/j$a;",
        ">;"
    }
.end annotation


# instance fields
.field private final i:Ljava/io/File;

.field private j:Z


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/io/File;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, p1}, Lcom/fyber/utils/b;-><init>(Ljava/lang/String;)V

    .line 24
    iput-boolean v0, p0, Lcom/fyber/utils/j;->j:Z

    .line 28
    if-nez p2, :cond_0

    .line 29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The localFile parameter is required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 31
    :cond_0
    iput-object p2, p0, Lcom/fyber/utils/j;->i:Ljava/io/File;

    .line 33
    iput-boolean v0, p0, Lcom/fyber/utils/j;->f:Z

    .line 34
    iput-boolean v0, p0, Lcom/fyber/utils/j;->g:Z

    .line 35
    iput-boolean v0, p0, Lcom/fyber/utils/j;->h:Z

    .line 36
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/io/File;)Lcom/fyber/utils/j;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 39
    new-instance v0, Lcom/fyber/utils/j;

    invoke-direct {v0, p0, p1}, Lcom/fyber/utils/j;-><init>(Ljava/lang/String;Ljava/io/File;)V

    return-object v0
.end method

.method static synthetic a(Lcom/fyber/utils/j;)Ljava/io/File;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/fyber/utils/j;->i:Ljava/io/File;

    return-object v0
.end method

.method static synthetic b(Lcom/fyber/utils/j;)Z
    .locals 1

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/fyber/utils/j;->j:Z

    return v0
.end method


# virtual methods
.method public final synthetic a()Lcom/fyber/utils/b;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/fyber/utils/j;->e()Lcom/fyber/utils/j;

    move-result-object v0

    return-object v0
.end method

.method public final a(Z)Lcom/fyber/utils/j;
    .locals 0

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/fyber/utils/j;->j:Z

    .line 49
    return-object p0
.end method

.method protected final synthetic a(Ljava/net/HttpURLConnection;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 20
    .line 1044
    new-instance v0, Lcom/fyber/utils/j$a;

    invoke-direct {v0, p0, p1}, Lcom/fyber/utils/j$a;-><init>(Lcom/fyber/utils/j;Ljava/net/HttpURLConnection;)V

    .line 20
    return-object v0
.end method

.method protected final c(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    iget v0, p0, Lcom/fyber/utils/j;->c:I

    const/16 v1, 0x190

    if-ge v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()Lcom/fyber/utils/j;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/fyber/utils/j;->j:Z

    if-eqz v0, :cond_0

    .line 55
    const-string v0, "Range"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bytes="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/fyber/utils/j;->i:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/fyber/utils/j;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/fyber/utils/b;

    .line 57
    :cond_0
    invoke-super {p0}, Lcom/fyber/utils/b;->a()Lcom/fyber/utils/b;

    move-result-object v0

    check-cast v0, Lcom/fyber/utils/j;

    return-object v0
.end method
