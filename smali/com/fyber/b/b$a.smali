.class public abstract Lcom/fyber/b/b$a;
.super Ljava/lang/Object;
.source "AdFetchOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/fyber/b/b;",
        "U:",
        "Lcom/fyber/b/b$a;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final a:Lcom/fyber/utils/u;

.field protected b:Lcom/fyber/requesters/Callback;

.field protected c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    invoke-virtual {p0}, Lcom/fyber/b/b$a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fyber/utils/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 191
    invoke-static {}, Lcom/fyber/Fyber;->getConfigs()Lcom/fyber/Fyber$a;

    move-result-object v1

    .line 192
    invoke-virtual {v1}, Lcom/fyber/Fyber$a;->e()Lcom/fyber/a/a;

    move-result-object v1

    .line 194
    invoke-static {v0, v1}, Lcom/fyber/utils/u;->a(Ljava/lang/String;Lcom/fyber/a/a;)Lcom/fyber/utils/u;

    move-result-object v0

    iget-object v1, p0, Lcom/fyber/b/b$a;->c:Ljava/lang/String;

    .line 195
    invoke-virtual {v0, v1}, Lcom/fyber/utils/u;->b(Ljava/lang/String;)Lcom/fyber/utils/u;

    move-result-object v0

    .line 196
    invoke-virtual {v0}, Lcom/fyber/utils/u;->a()Lcom/fyber/utils/u;

    move-result-object v0

    .line 197
    invoke-virtual {v0}, Lcom/fyber/utils/u;->b()Lcom/fyber/utils/u;

    move-result-object v0

    iput-object v0, p0, Lcom/fyber/b/b$a;->a:Lcom/fyber/utils/u;

    .line 198
    return-void
.end method


# virtual methods
.method protected abstract a()Lcom/fyber/b/b$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TU;"
        }
    .end annotation
.end method

.method public final a(Lcom/fyber/requesters/Callback;)Lcom/fyber/b/b$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fyber/requesters/Callback;",
            ")TU;"
        }
    .end annotation

    .prologue
    .line 207
    iput-object p1, p0, Lcom/fyber/b/b$a;->b:Lcom/fyber/requesters/Callback;

    .line 208
    invoke-virtual {p0}, Lcom/fyber/b/b$a;->a()Lcom/fyber/b/b$a;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Lcom/fyber/b/b$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TU;"
        }
    .end annotation

    .prologue
    .line 217
    iput-object p1, p0, Lcom/fyber/b/b$a;->c:Ljava/lang/String;

    .line 218
    iget-object v0, p0, Lcom/fyber/b/b$a;->a:Lcom/fyber/utils/u;

    invoke-virtual {v0, p1}, Lcom/fyber/utils/u;->b(Ljava/lang/String;)Lcom/fyber/utils/u;

    .line 219
    invoke-virtual {p0}, Lcom/fyber/b/b$a;->a()Lcom/fyber/b/b$a;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/util/Map;)Lcom/fyber/b/b$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)TU;"
        }
    .end annotation

    .prologue
    .line 212
    iget-object v0, p0, Lcom/fyber/b/b$a;->a:Lcom/fyber/utils/u;

    invoke-virtual {v0, p1}, Lcom/fyber/utils/u;->a(Ljava/util/Map;)Lcom/fyber/utils/u;

    .line 213
    invoke-virtual {p0}, Lcom/fyber/b/b$a;->a()Lcom/fyber/b/b$a;

    move-result-object v0

    return-object v0
.end method

.method protected abstract b()Ljava/lang/String;
.end method
