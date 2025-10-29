package usf.saav.cmd;

public class MergePairingInput {
    private int[] vertexIds;
    private float[] vertexWeights;
    private int[] edgeOriginIds;
    private int[] edgeDestinationIds;

    public MergePairingInput(int[] vertexIds, float[] vertexWeights, int[] edgeOriginIds, int[] edgeDestinationIds) {
        this.vertexIds = vertexIds;
        this.vertexWeights = vertexWeights;
        this.edgeOriginIds = edgeOriginIds;
        this.edgeDestinationIds = edgeDestinationIds;
    }

    public int[] getVertexIds() {
        return vertexIds;
    }

    public void setVertexIds(int[] vertexIds) {
        this.vertexIds = vertexIds;
    }

    public float[] getVertexWeights() {
        return vertexWeights;
    }

    public void setVertexWeights(float[] vertexWeights) {
        this.vertexWeights = vertexWeights;
    }

    public int[] getEdgeOriginIds() {
        return edgeOriginIds;
    }

    public void setEdgeOriginIds(int[] edgeOriginIds) {
        this.edgeOriginIds = edgeOriginIds;
    }

    public int[] getEdgeDestinationIds() {
        return edgeDestinationIds;
    }

    public void setEdgeDestinationIds(int[] edgeDestinationIds) {
        this.edgeDestinationIds = edgeDestinationIds;
    }
}
