using DersRotam.Api;

namespace DersRotam.UnitTests;

public class ProblemDetailsTests
{
    [Fact]
    public void InternalServerError_ContainsSafeDetailsAndTraceId()
    {
        var problem = ApiProblemDetails.CreateInternalServerError("trace-123");

        Assert.Equal(500, problem.Status);
        Assert.Equal("An unexpected error occurred.", problem.Title);
        Assert.Equal("trace-123", problem.Extensions["traceId"]);
        Assert.DoesNotContain("exception", problem.Extensions.Keys);
    }
}
