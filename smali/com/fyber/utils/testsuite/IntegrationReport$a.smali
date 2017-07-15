.class final Lcom/fyber/utils/testsuite/IntegrationReport$a;
.super Ljava/lang/Object;
.source "IntegrationReport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/utils/testsuite/IntegrationReport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fyber/utils/testsuite/MediationBundleInfo;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fyber/utils/testsuite/MediationBundleInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/fyber/utils/testsuite/IntegrationReport$a;->e:Ljava/util/List;

    .line 95
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/fyber/utils/testsuite/IntegrationReport$a;->f:Ljava/util/List;

    return-void
.end method


# virtual methods
.method final a(Ljava/lang/String;)Lcom/fyber/utils/testsuite/IntegrationReport$a;
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/fyber/utils/testsuite/IntegrationReport$a;->c:Ljava/lang/String;

    .line 109
    return-object p0
.end method

.method final a(Ljava/util/List;)Lcom/fyber/utils/testsuite/IntegrationReport$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fyber/utils/testsuite/MediationBundleInfo;",
            ">;)",
            "Lcom/fyber/utils/testsuite/IntegrationReport$a;"
        }
    .end annotation

    .prologue
    .line 118
    iput-object p1, p0, Lcom/fyber/utils/testsuite/IntegrationReport$a;->e:Ljava/util/List;

    .line 119
    return-object p0
.end method

.method final a(Z)Lcom/fyber/utils/testsuite/IntegrationReport$a;
    .locals 0

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/fyber/utils/testsuite/IntegrationReport$a;->a:Z

    .line 99
    return-object p0
.end method

.method final a()Lcom/fyber/utils/testsuite/IntegrationReport;
    .locals 8

    .prologue
    .line 128
    new-instance v0, Lcom/fyber/utils/testsuite/IntegrationReport;

    iget-boolean v1, p0, Lcom/fyber/utils/testsuite/IntegrationReport$a;->a:Z

    iget-boolean v2, p0, Lcom/fyber/utils/testsuite/IntegrationReport$a;->b:Z

    iget-object v3, p0, Lcom/fyber/utils/testsuite/IntegrationReport$a;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/fyber/utils/testsuite/IntegrationReport$a;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/fyber/utils/testsuite/IntegrationReport$a;->e:Ljava/util/List;

    iget-object v6, p0, Lcom/fyber/utils/testsuite/IntegrationReport$a;->f:Ljava/util/List;

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/fyber/utils/testsuite/IntegrationReport;-><init>(ZZLjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;B)V

    return-object v0
.end method

.method final b(Ljava/lang/String;)Lcom/fyber/utils/testsuite/IntegrationReport$a;
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/fyber/utils/testsuite/IntegrationReport$a;->d:Ljava/lang/String;

    .line 114
    return-object p0
.end method

.method final b(Ljava/util/List;)Lcom/fyber/utils/testsuite/IntegrationReport$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fyber/utils/testsuite/MediationBundleInfo;",
            ">;)",
            "Lcom/fyber/utils/testsuite/IntegrationReport$a;"
        }
    .end annotation

    .prologue
    .line 123
    iput-object p1, p0, Lcom/fyber/utils/testsuite/IntegrationReport$a;->f:Ljava/util/List;

    .line 124
    return-object p0
.end method

.method final b(Z)Lcom/fyber/utils/testsuite/IntegrationReport$a;
    .locals 0

    .prologue
    .line 103
    iput-boolean p1, p0, Lcom/fyber/utils/testsuite/IntegrationReport$a;->b:Z

    .line 104
    return-object p0
.end method
