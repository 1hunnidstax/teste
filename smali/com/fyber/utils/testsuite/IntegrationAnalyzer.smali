.class public abstract Lcom/fyber/utils/testsuite/IntegrationAnalyzer;
.super Ljava/lang/Object;
.source "IntegrationAnalyzer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fyber/utils/testsuite/IntegrationAnalyzer$FailReason;
    }
.end annotation


# static fields
.field protected static a:Lcom/fyber/utils/testsuite/IntegrationReport;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    return-void
.end method

.method private static a(Ljava/util/Map;)Ljava/util/List;
    .locals 6
    .param p0    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)",
            "Ljava/util/List",
            "<",
            "Lcom/fyber/utils/testsuite/MediationBundleInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 155
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 156
    new-instance v3, Lcom/fyber/utils/testsuite/MediationBundleInfo$a;

    invoke-direct {v3}, Lcom/fyber/utils/testsuite/MediationBundleInfo$a;-><init>()V

    .line 157
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 158
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 159
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 161
    const-string v5, "fyber"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 162
    const-string v5, "FYBER_STARTED"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 163
    invoke-virtual {v3, v1}, Lcom/fyber/utils/testsuite/MediationBundleInfo$a;->b(Ljava/lang/String;)Lcom/fyber/utils/testsuite/MediationBundleInfo$a;

    .line 166
    if-eqz v5, :cond_1

    .line 167
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "true"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 168
    invoke-virtual {v3}, Lcom/fyber/utils/testsuite/MediationBundleInfo$a;->a()Lcom/fyber/utils/testsuite/MediationBundleInfo$a;

    move-result-object v5

    .line 169
    invoke-virtual {v5, v1}, Lcom/fyber/utils/testsuite/MediationBundleInfo$a;->a(Z)Lcom/fyber/utils/testsuite/MediationBundleInfo$a;

    move-result-object v1

    const-string v5, "ADAPTER_VERSION"

    .line 170
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/fyber/utils/testsuite/MediationBundleInfo$a;->a(Ljava/lang/String;)Lcom/fyber/utils/testsuite/MediationBundleInfo$a;

    .line 173
    :cond_1
    invoke-virtual {v3}, Lcom/fyber/utils/testsuite/MediationBundleInfo$a;->b()Lcom/fyber/utils/testsuite/MediationBundleInfo;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    invoke-virtual {v3}, Lcom/fyber/utils/testsuite/MediationBundleInfo$a;->c()V

    goto :goto_0

    .line 178
    :cond_2
    return-object v2
.end method

.method private static a(Lcom/fyber/utils/testsuite/IntegrationAnalysisListener;)V
    .locals 1

    .prologue
    .line 137
    invoke-static {}, Lcom/fyber/Fyber;->getConfigs()Lcom/fyber/Fyber$a;

    new-instance v0, Lcom/fyber/utils/testsuite/IntegrationAnalyzer$2;

    invoke-direct {v0, p0}, Lcom/fyber/utils/testsuite/IntegrationAnalyzer$2;-><init>(Lcom/fyber/utils/testsuite/IntegrationAnalysisListener;)V

    invoke-static {v0}, Lcom/fyber/Fyber$a;->a(Lcom/fyber/utils/d;)V

    .line 143
    return-void
.end method

.method static synthetic a(Lcom/fyber/utils/testsuite/IntegrationAnalysisListener;Lcom/fyber/utils/testsuite/IntegrationReport$a;)V
    .locals 0

    .prologue
    .line 24
    invoke-static {p0, p1}, Lcom/fyber/utils/testsuite/IntegrationAnalyzer;->b(Lcom/fyber/utils/testsuite/IntegrationAnalysisListener;Lcom/fyber/utils/testsuite/IntegrationReport$a;)V

    return-void
.end method

.method static synthetic a(Lcom/fyber/utils/testsuite/IntegrationReport$a;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 24
    invoke-static {p0, p1}, Lcom/fyber/utils/testsuite/IntegrationAnalyzer;->b(Lcom/fyber/utils/testsuite/IntegrationReport$a;Ljava/util/Map;)V

    return-void
.end method

.method private static a(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fyber/utils/testsuite/MediationBundleInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/fyber/utils/testsuite/MediationBundleInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/fyber/utils/testsuite/MediationBundleInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 216
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fyber/utils/testsuite/MediationBundleInfo;

    .line 217
    invoke-virtual {v0}, Lcom/fyber/utils/testsuite/MediationBundleInfo;->isStarted()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 218
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 220
    :cond_0
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 223
    :cond_1
    return-void
.end method

.method private static a()Z
    .locals 1

    .prologue
    .line 188
    :try_start_0
    const-string v0, "com.fyber.mediation.MediationAdapterStarter"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    const/4 v0, 0x1

    .line 192
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static analyze(Lcom/fyber/utils/testsuite/IntegrationAnalysisListener;)V
    .locals 5
    .param p0    # Lcom/fyber/utils/testsuite/IntegrationAnalysisListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 67
    invoke-static {}, Lcom/fyber/Fyber;->getConfigs()Lcom/fyber/Fyber$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fyber/Fyber$a;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    sget-object v0, Lcom/fyber/utils/testsuite/IntegrationAnalyzer$FailReason;->SDK_NOT_STARTED:Lcom/fyber/utils/testsuite/IntegrationAnalyzer$FailReason;

    .line 2146
    invoke-static {}, Lcom/fyber/Fyber;->getConfigs()Lcom/fyber/Fyber$a;

    new-instance v1, Lcom/fyber/utils/testsuite/IntegrationAnalyzer$3;

    invoke-direct {v1, p0, v0}, Lcom/fyber/utils/testsuite/IntegrationAnalyzer$3;-><init>(Lcom/fyber/utils/testsuite/IntegrationAnalysisListener;Lcom/fyber/utils/testsuite/IntegrationAnalyzer$FailReason;)V

    invoke-static {v1}, Lcom/fyber/Fyber$a;->a(Lcom/fyber/utils/d;)V

    .line 99
    :goto_0
    return-void

    .line 72
    :cond_0
    sget-object v0, Lcom/fyber/utils/testsuite/IntegrationAnalyzer;->a:Lcom/fyber/utils/testsuite/IntegrationReport;

    if-eqz v0, :cond_1

    .line 73
    invoke-static {p0}, Lcom/fyber/utils/testsuite/IntegrationAnalyzer;->a(Lcom/fyber/utils/testsuite/IntegrationAnalysisListener;)V

    goto :goto_0

    .line 77
    :cond_1
    invoke-static {}, Lcom/fyber/Fyber;->getConfigs()Lcom/fyber/Fyber$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fyber/Fyber$a;->e()Lcom/fyber/a/a;

    move-result-object v0

    .line 78
    new-instance v1, Lcom/fyber/utils/testsuite/IntegrationReport$a;

    invoke-direct {v1}, Lcom/fyber/utils/testsuite/IntegrationReport$a;-><init>()V

    .line 80
    invoke-static {}, Lcom/fyber/utils/testsuite/IntegrationAnalyzer;->b()Z

    move-result v2

    .line 81
    invoke-static {}, Lcom/fyber/utils/testsuite/IntegrationAnalyzer;->a()Z

    move-result v3

    .line 82
    invoke-virtual {v0}, Lcom/fyber/a/a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/fyber/utils/testsuite/IntegrationReport$a;->a(Ljava/lang/String;)Lcom/fyber/utils/testsuite/IntegrationReport$a;

    move-result-object v4

    .line 83
    invoke-virtual {v0}, Lcom/fyber/a/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/fyber/utils/testsuite/IntegrationReport$a;->b(Ljava/lang/String;)Lcom/fyber/utils/testsuite/IntegrationReport$a;

    move-result-object v0

    .line 84
    invoke-virtual {v0, v2}, Lcom/fyber/utils/testsuite/IntegrationReport$a;->b(Z)Lcom/fyber/utils/testsuite/IntegrationReport$a;

    move-result-object v0

    .line 85
    invoke-virtual {v0, v3}, Lcom/fyber/utils/testsuite/IntegrationReport$a;->a(Z)Lcom/fyber/utils/testsuite/IntegrationReport$a;

    .line 87
    if-eqz v3, :cond_2

    if-nez v2, :cond_3

    .line 88
    :cond_2
    invoke-static {p0, v1}, Lcom/fyber/utils/testsuite/IntegrationAnalyzer;->b(Lcom/fyber/utils/testsuite/IntegrationAnalysisListener;Lcom/fyber/utils/testsuite/IntegrationReport$a;)V

    goto :goto_0

    .line 91
    :cond_3
    invoke-static {}, Lcom/fyber/utils/testsuite/b;->a()Ljava/util/Map;

    move-result-object v0

    .line 92
    if-eqz v0, :cond_4

    .line 94
    invoke-static {v1, v0}, Lcom/fyber/utils/testsuite/IntegrationAnalyzer;->b(Lcom/fyber/utils/testsuite/IntegrationReport$a;Ljava/util/Map;)V

    .line 95
    invoke-static {p0, v1}, Lcom/fyber/utils/testsuite/IntegrationAnalyzer;->b(Lcom/fyber/utils/testsuite/IntegrationAnalysisListener;Lcom/fyber/utils/testsuite/IntegrationReport$a;)V

    goto :goto_0

    .line 3110
    :cond_4
    invoke-static {}, Lcom/fyber/Fyber;->getConfigs()Lcom/fyber/Fyber$a;

    move-result-object v0

    new-instance v2, Lcom/fyber/utils/testsuite/IntegrationAnalyzer$1;

    invoke-direct {v2, v1, p0}, Lcom/fyber/utils/testsuite/IntegrationAnalyzer$1;-><init>(Lcom/fyber/utils/testsuite/IntegrationReport$a;Lcom/fyber/utils/testsuite/IntegrationAnalysisListener;)V

    invoke-virtual {v0, v2}, Lcom/fyber/Fyber$a;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private static b(Lcom/fyber/utils/testsuite/IntegrationAnalysisListener;Lcom/fyber/utils/testsuite/IntegrationReport$a;)V
    .locals 1

    .prologue
    .line 132
    invoke-virtual {p1}, Lcom/fyber/utils/testsuite/IntegrationReport$a;->a()Lcom/fyber/utils/testsuite/IntegrationReport;

    move-result-object v0

    sput-object v0, Lcom/fyber/utils/testsuite/IntegrationAnalyzer;->a:Lcom/fyber/utils/testsuite/IntegrationReport;

    .line 133
    invoke-static {p0}, Lcom/fyber/utils/testsuite/IntegrationAnalyzer;->a(Lcom/fyber/utils/testsuite/IntegrationAnalysisListener;)V

    .line 134
    return-void
.end method

.method private static b(Lcom/fyber/utils/testsuite/IntegrationReport$a;Ljava/util/Map;)V
    .locals 3
    .param p1    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fyber/utils/testsuite/IntegrationReport$a;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 103
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 105
    invoke-static {p1}, Lcom/fyber/utils/testsuite/IntegrationAnalyzer;->a(Ljava/util/Map;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/fyber/utils/testsuite/IntegrationAnalyzer;->a(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 106
    invoke-virtual {p0, v0}, Lcom/fyber/utils/testsuite/IntegrationReport$a;->a(Ljava/util/List;)Lcom/fyber/utils/testsuite/IntegrationReport$a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/fyber/utils/testsuite/IntegrationReport$a;->b(Ljava/util/List;)Lcom/fyber/utils/testsuite/IntegrationReport$a;

    .line 107
    return-void
.end method

.method private static b()Z
    .locals 5

    .prologue
    .line 202
    :try_start_0
    const-string v0, "com.fyber.mediation.AnnotationsBuildConfig"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 203
    const-string v0, "ANNOTATIONS_VERSION"

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 204
    const-string v2, "IntegrationAnalyzer"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "fyber-annotations version: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/fyber/utils/FyberLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    const-string v0, "ANNOTATIONS_COMPILER_VERSION"

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 206
    const-string v1, "IntegrationAnalyzer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "fyber-annotations-compiler version: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/fyber/utils/FyberLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    const/4 v0, 0x1

    .line 212
    :goto_0
    return v0

    :catch_0
    move-exception v0

    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 211
    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method public static showTestSuite(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 55
    sget-object v0, Lcom/fyber/ads/internal/d;->a:Lcom/fyber/ads/internal/d;

    const-string v1, "show"

    .line 1244
    new-instance v2, Lcom/fyber/utils/testsuite/c$a;

    invoke-direct {v2, v0}, Lcom/fyber/utils/testsuite/c$a;-><init>(Lcom/fyber/ads/internal/d;)V

    .line 1245
    invoke-virtual {v2, v1}, Lcom/fyber/utils/testsuite/c$a;->b(Ljava/lang/String;)Lcom/fyber/b/e$a;

    move-result-object v0

    check-cast v0, Lcom/fyber/utils/testsuite/c$a;

    .line 1246
    invoke-virtual {v0}, Lcom/fyber/utils/testsuite/c$a;->a()Lcom/fyber/utils/testsuite/c;

    move-result-object v0

    .line 1247
    invoke-virtual {v0}, Lcom/fyber/utils/testsuite/c;->b()V

    .line 56
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/fyber/utils/testsuite/TestSuiteActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 57
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 58
    return-void
.end method
