/* 
 * Indexer
 *
 * Algorand ledger analytics API.
 *
 * OpenAPI spec version: 2.0
 * 
 * Generated by: https://github.com/swagger-api/swagger-codegen.git
 */
using System;
using System.Linq;
using System.IO;
using System.Text;
using System.Text.RegularExpressions;
using System.Collections;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Runtime.Serialization;
using Newtonsoft.Json;
using Newtonsoft.Json.Converters;
using System.ComponentModel.DataAnnotations;
using SwaggerDateConverter = Algorand.Client.SwaggerDateConverter;

namespace Algorand.V2.Model
{
    /// <summary>
    /// Fields relating to rewards,
    /// </summary>
    [DataContract]
        public partial class BlockRewards :  IEquatable<BlockRewards>, IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="BlockRewards" /> class.
        /// </summary>
        /// <param name="feeSink">\\[fees\\] accepts transaction fees, it can only spend to the incentive pool. (required).</param>
        /// <param name="rewardsCalculationRound">\\[rwcalr\\] number of leftover MicroAlgos after the distribution of rewards-rate MicroAlgos for every reward unit in the next round. (required).</param>
        /// <param name="rewardsLevel">\\[earn\\] How many rewards, in MicroAlgos, have been distributed to each RewardUnit of MicroAlgos since genesis. (required).</param>
        /// <param name="rewardsPool">\\[rwd\\] accepts periodic injections from the fee-sink and continually redistributes them as rewards. (required).</param>
        /// <param name="rewardsRate">\\[rate\\] Number of new MicroAlgos added to the participation stake from rewards at the next round. (required).</param>
        /// <param name="rewardsResidue">\\[frac\\] Number of leftover MicroAlgos after the distribution of RewardsRate/rewardUnits MicroAlgos for every reward unit in the next round. (required).</param>
        public BlockRewards(string feeSink = default(string), long? rewardsCalculationRound = default, long? rewardsLevel = default, string rewardsPool = default(string), long? rewardsRate = default, long? rewardsResidue = default)
        {
            // to ensure "feeSink" is required (not null)
            if (feeSink == null)
            {
                throw new InvalidDataException("feeSink is a required property for BlockRewards and cannot be null");
            }
            else
            {
                this.FeeSink = feeSink;
            }
            // to ensure "rewardsCalculationRound" is required (not null)
            if (rewardsCalculationRound == null)
            {
                throw new InvalidDataException("rewardsCalculationRound is a required property for BlockRewards and cannot be null");
            }
            else
            {
                this.RewardsCalculationRound = rewardsCalculationRound;
            }
            // to ensure "rewardsLevel" is required (not null)
            if (rewardsLevel == null)
            {
                throw new InvalidDataException("rewardsLevel is a required property for BlockRewards and cannot be null");
            }
            else
            {
                this.RewardsLevel = rewardsLevel;
            }
            // to ensure "rewardsPool" is required (not null)
            if (rewardsPool == null)
            {
                throw new InvalidDataException("rewardsPool is a required property for BlockRewards and cannot be null");
            }
            else
            {
                this.RewardsPool = rewardsPool;
            }
            // to ensure "rewardsRate" is required (not null)
            if (rewardsRate == null)
            {
                throw new InvalidDataException("rewardsRate is a required property for BlockRewards and cannot be null");
            }
            else
            {
                this.RewardsRate = rewardsRate;
            }
            // to ensure "rewardsResidue" is required (not null)
            if (rewardsResidue == null)
            {
                throw new InvalidDataException("rewardsResidue is a required property for BlockRewards and cannot be null");
            }
            else
            {
                this.RewardsResidue = rewardsResidue;
            }
        }
        
        /// <summary>
        /// \\[fees\\] accepts transaction fees, it can only spend to the incentive pool.
        /// </summary>
        /// <value>\\[fees\\] accepts transaction fees, it can only spend to the incentive pool.</value>
        [DataMember(Name="fee-sink", EmitDefaultValue=false)]
        public string FeeSink { get; set; }

        /// <summary>
        /// \\[rwcalr\\] number of leftover MicroAlgos after the distribution of rewards-rate MicroAlgos for every reward unit in the next round.
        /// </summary>
        /// <value>\\[rwcalr\\] number of leftover MicroAlgos after the distribution of rewards-rate MicroAlgos for every reward unit in the next round.</value>
        [DataMember(Name="rewards-calculation-round", EmitDefaultValue=false)]
        public long? RewardsCalculationRound { get; set; }

        /// <summary>
        /// \\[earn\\] How many rewards, in MicroAlgos, have been distributed to each RewardUnit of MicroAlgos since genesis.
        /// </summary>
        /// <value>\\[earn\\] How many rewards, in MicroAlgos, have been distributed to each RewardUnit of MicroAlgos since genesis.</value>
        [DataMember(Name="rewards-level", EmitDefaultValue=false)]
        public long? RewardsLevel { get; set; }

        /// <summary>
        /// \\[rwd\\] accepts periodic injections from the fee-sink and continually redistributes them as rewards.
        /// </summary>
        /// <value>\\[rwd\\] accepts periodic injections from the fee-sink and continually redistributes them as rewards.</value>
        [DataMember(Name="rewards-pool", EmitDefaultValue=false)]
        public string RewardsPool { get; set; }

        /// <summary>
        /// \\[rate\\] Number of new MicroAlgos added to the participation stake from rewards at the next round.
        /// </summary>
        /// <value>\\[rate\\] Number of new MicroAlgos added to the participation stake from rewards at the next round.</value>
        [DataMember(Name="rewards-rate", EmitDefaultValue=false)]
        public long? RewardsRate { get; set; }

        /// <summary>
        /// \\[frac\\] Number of leftover MicroAlgos after the distribution of RewardsRate/rewardUnits MicroAlgos for every reward unit in the next round.
        /// </summary>
        /// <value>\\[frac\\] Number of leftover MicroAlgos after the distribution of RewardsRate/rewardUnits MicroAlgos for every reward unit in the next round.</value>
        [DataMember(Name="rewards-residue", EmitDefaultValue=false)]
        public long? RewardsResidue { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            var sb = new StringBuilder();
            sb.Append("class BlockRewards {\n");
            sb.Append("  FeeSink: ").Append(FeeSink).Append("\n");
            sb.Append("  RewardsCalculationRound: ").Append(RewardsCalculationRound).Append("\n");
            sb.Append("  RewardsLevel: ").Append(RewardsLevel).Append("\n");
            sb.Append("  RewardsPool: ").Append(RewardsPool).Append("\n");
            sb.Append("  RewardsRate: ").Append(RewardsRate).Append("\n");
            sb.Append("  RewardsResidue: ").Append(RewardsResidue).Append("\n");
            sb.Append("}\n");
            return sb.ToString();
        }
  
        /// <summary>
        /// Returns the JSON string presentation of the object
        /// </summary>
        /// <returns>JSON string presentation of the object</returns>
        public virtual string ToJson()
        {
            return JsonConvert.SerializeObject(this, Formatting.Indented);
        }

        /// <summary>
        /// Returns true if objects are equal
        /// </summary>
        /// <param name="input">Object to be compared</param>
        /// <returns>Boolean</returns>
        public override bool Equals(object input)
        {
            return this.Equals(input as BlockRewards);
        }

        /// <summary>
        /// Returns true if BlockRewards instances are equal
        /// </summary>
        /// <param name="input">Instance of BlockRewards to be compared</param>
        /// <returns>Boolean</returns>
        public bool Equals(BlockRewards input)
        {
            if (input == null)
                return false;

            return 
                (
                    this.FeeSink == input.FeeSink ||
                    (this.FeeSink != null &&
                    this.FeeSink.Equals(input.FeeSink))
                ) && 
                (
                    this.RewardsCalculationRound == input.RewardsCalculationRound ||
                    (this.RewardsCalculationRound != null &&
                    this.RewardsCalculationRound.Equals(input.RewardsCalculationRound))
                ) && 
                (
                    this.RewardsLevel == input.RewardsLevel ||
                    (this.RewardsLevel != null &&
                    this.RewardsLevel.Equals(input.RewardsLevel))
                ) && 
                (
                    this.RewardsPool == input.RewardsPool ||
                    (this.RewardsPool != null &&
                    this.RewardsPool.Equals(input.RewardsPool))
                ) && 
                (
                    this.RewardsRate == input.RewardsRate ||
                    (this.RewardsRate != null &&
                    this.RewardsRate.Equals(input.RewardsRate))
                ) && 
                (
                    this.RewardsResidue == input.RewardsResidue ||
                    (this.RewardsResidue != null &&
                    this.RewardsResidue.Equals(input.RewardsResidue))
                );
        }

        /// <summary>
        /// Gets the hash code
        /// </summary>
        /// <returns>Hash code</returns>
        public override int GetHashCode()
        {
            unchecked // Overflow is fine, just wrap
            {
                int hashCode = 41;
                if (this.FeeSink != null)
                    hashCode = hashCode * 59 + this.FeeSink.GetHashCode();
                if (this.RewardsCalculationRound != null)
                    hashCode = hashCode * 59 + this.RewardsCalculationRound.GetHashCode();
                if (this.RewardsLevel != null)
                    hashCode = hashCode * 59 + this.RewardsLevel.GetHashCode();
                if (this.RewardsPool != null)
                    hashCode = hashCode * 59 + this.RewardsPool.GetHashCode();
                if (this.RewardsRate != null)
                    hashCode = hashCode * 59 + this.RewardsRate.GetHashCode();
                if (this.RewardsResidue != null)
                    hashCode = hashCode * 59 + this.RewardsResidue.GetHashCode();
                return hashCode;
            }
        }

        /// <summary>
        /// To validate all properties of the instance
        /// </summary>
        /// <param name="validationContext">Validation context</param>
        /// <returns>Validation Result</returns>
        IEnumerable<System.ComponentModel.DataAnnotations.ValidationResult> IValidatableObject.Validate(ValidationContext validationContext)
        {
            yield break;
        }
    }
}
